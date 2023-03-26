/**********
Copyright (c) 2019-2020, Xilinx, Inc.
All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice,
this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
this list of conditions and the following disclaimer in the documentation
and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its contributors
may be used to endorse or promote products derived from this software
without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
ARE DISCLAIMED.
IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
INDIRECT,
INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
LIMITED TO,
PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
BUSINESS INTERRUPTION)
HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
THIS SOFTWARE,
EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
**********/
/* This is a stream to memory mapped data mover kernel which takes input from a
stream and writes data
to global memory via memory mapped interface */

#include "ap_axi_sdata.h"
#include "ap_int.h"
#include "hls_stream.h"
//#include "./aes/AESfunctions.h"
#include "./aes/AESfunctions.cpp"
//#include "./aes/AEStables.h"
#include <iostream>
using namespace std;
#include <cstdio>

#define DWIDTH 512
#define TDWIDTH 16

typedef ap_axiu<DWIDTH, 1, 1, TDWIDTH> pkt;

extern "C" {
void rxkrnl(ap_uint<DWIDTH> *out,     // Write only memory mapped
               hls::stream<pkt> &n2k,    // Internal Stream
               unsigned int     size,     // Size in bytes
	       unsigned int	dec   // decrypt data
               ) {
#pragma HLS INTERFACE m_axi port = out offset = slave bundle = gmem
#pragma HLS INTERFACE axis port = n2k
#pragma HLS INTERFACE s_axilite port = out bundle = control
#pragma HLS INTERFACE s_axilite port = size bundle = control
#pragma HLS INTERFACE s_axilite port = dec bundle = control	
#pragma HLS INTERFACE s_axilite port = return bundle = control

unsigned int bytes_per_beat = (DWIDTH / 8);
unsigned short Nk = 4; // 4 or 6 or 8 [32-bit words] columns in cipher key    
unsigned short CipherKeyLength = Nk * rows; // bytes
unsigned short Nr = max(Nb, Nk) + 6; // = 10, 12 or 14 rounds
unsigned short ExtdCipherKeyLength = (Nr + 1) * stt_lng; // bytes in the expanded cipher key
// create a dummy test cipher key
unsigned char key[CipherKeyLength];
for (unsigned short i = 0; i < CipherKeyLength; i++)
	{
       		key[i] = i;
	}

// extend key
unsigned char expandedKey[ExtdCipherKeyLength];
KeyExpansion(key, Nk, expandedKey);

data_mover:
	int i = 0;
  	pkt v;
	ap_uint<512> tmp;
	ap_uint<512> decrypteddata;
  	// Auto-pipeline is going to apply pipeline to this loop
  	for (unsigned int i = 0; i < (size / bytes_per_beat); i++) {
		n2k.read(v);
	  	//out[i] = v.data;
		tmp = v.data;

		if (dec==1){
			for (int k = 0; k < (512/128); k++){
#pragma HLS UNROLL
				unsigned char ciphertext[stt_lng];
				for (int i=0;i<16;i++){
					ciphertext[i] = tmp(128*k+i*8+7,128*k+i*8);
				}
				unsigned char plaintext[stt_lng];
                            	AES_Decrypt(ciphertext, expandedKey, Nr, plaintext);
				for (int i = 0; i<16; i++){
					decrypteddata(128*k+i*8+7,128*k+i*8) = plaintext[i];
				}
			}
			out[i] = decrypteddata;
		}
		else{
			out[i] = tmp;
		}

  	}
}
}
