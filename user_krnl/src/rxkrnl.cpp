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
#include "./aes/AESfunctions.h"
#include "./aes/AESfunctions.cpp"
#include "./aes/AEStables.h"

#define DWIDTH 512
#define TDWIDTH 16

typedef ap_axiu<DWIDTH, 1, 1, TDWIDTH> pkt;

void AES_Decrypt(unsigned char ciphertext[stt_lng],
                unsigned char expandedKey[ExtdCipherKeyLenghth_max], unsigned short Nr,
                unsigned char plaintext[stt_lng]);

const unsigned char rcon[256] = { 0x8d, 0x01, 0x02, 0x04, 0x08, 0x10, 0x20,
                0x40, 0x80, 0x1b, 0x36, 0x6c, 0xd8, 0xab, 0x4d, 0x9a, 0x2f, 0x5e, 0xbc,
                0x63, 0xc6, 0x97, 0x35, 0x6a, 0xd4, 0xb3, 0x7d, 0xfa, 0xef, 0xc5, 0x91,
                0x39, 0x72, 0xe4, 0xd3, 0xbd, 0x61, 0xc2, 0x9f, 0x25, 0x4a, 0x94, 0x33,
                0x66, 0xcc, 0x83, 0x1d, 0x3a, 0x74, 0xe8, 0xcb, 0x8d, 0x01, 0x02, 0x04,
                0x08, 0x10, 0x20, 0x40, 0x80, 0x1b, 0x36, 0x6c, 0xd8, 0xab, 0x4d, 0x9a,
                0x2f, 0x5e, 0xbc, 0x63, 0xc6, 0x97, 0x35, 0x6a, 0xd4, 0xb3, 0x7d, 0xfa,
                0xef, 0xc5, 0x91, 0x39, 0x72, 0xe4, 0xd3, 0xbd, 0x61, 0xc2, 0x9f, 0x25,
                0x4a, 0x94, 0x33, 0x66, 0xcc, 0x83, 0x1d, 0x3a, 0x74, 0xe8, 0xcb, 0x8d,
                0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x1b, 0x36, 0x6c, 0xd8,
                0xab, 0x4d, 0x9a, 0x2f, 0x5e, 0xbc, 0x63, 0xc6, 0x97, 0x35, 0x6a, 0xd4,
                0xb3, 0x7d, 0xfa, 0xef, 0xc5, 0x91, 0x39, 0x72, 0xe4, 0xd3, 0xbd, 0x61,
                0xc2, 0x9f, 0x25, 0x4a, 0x94, 0x33, 0x66, 0xcc, 0x83, 0x1d, 0x3a, 0x74,
                0xe8, 0xcb, 0x8d, 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x1b,
                0x36, 0x6c, 0xd8, 0xab, 0x4d, 0x9a, 0x2f, 0x5e, 0xbc, 0x63, 0xc6, 0x97,
                0x35, 0x6a, 0xd4, 0xb3, 0x7d, 0xfa, 0xef, 0xc5, 0x91, 0x39, 0x72, 0xe4,
                0xd3, 0xbd, 0x61, 0xc2, 0x9f, 0x25, 0x4a, 0x94, 0x33, 0x66, 0xcc, 0x83,
                0x1d, 0x3a, 0x74, 0xe8, 0xcb, 0x8d, 0x01, 0x02, 0x04, 0x08, 0x10, 0x20,
                0x40, 0x80, 0x1b, 0x36, 0x6c, 0xd8, 0xab, 0x4d, 0x9a, 0x2f, 0x5e, 0xbc,
                0x63, 0xc6, 0x97, 0x35, 0x6a, 0xd4, 0xb3, 0x7d, 0xfa, 0xef, 0xc5, 0x91,
                0x39, 0x72, 0xe4, 0xd3, 0xbd, 0x61, 0xc2, 0x9f, 0x25, 0x4a, 0x94, 0x33,
                0x66, 0xcc, 0x83, 0x1d, 0x3a, 0x74, 0xe8, 0xcb, 0x8d };

void KeyExpansionCore(unsigned char* in4, unsigned char i) {
        // RotWord rotates left
        // SubWord substitutes with S - Box value
        unsigned char t = in4[0];
        in4[0] = s_box[in4[1]];
        in4[1] = s_box[in4[2]];
        in4[2] = s_box[in4[3]];
        in4[3] = s_box[t];
        // RCon (round constant) 1st byte XOR rcon
        in4[0] = in4[0] ^ rcon[i];
}

void SubWord(unsigned char* in4) {
        // SubWord substitutes with S - Box value
        in4[0] = s_box[in4[0]];
        in4[1] = s_box[in4[1]];
        in4[2] = s_box[in4[2]];
        in4[3] = s_box[in4[3]];
}

void KeyExpansion(unsigned char* inputKey, unsigned short Nk,
                unsigned char* expandedKey) {
        unsigned short Nr = (Nk > Nb) ? Nk + 6 : Nb + 6; // = 10, 12 or 14 rounds
        // Copy the inputKey at the beginning of expandedKey
        for (unsigned short i = 0; i < Nk * rows; i++) {
                expandedKey[i] = inputKey[i];
        }

        // Variables
        unsigned short byGen = Nk * rows;
        unsigned short rconIdx = 1;
        unsigned char temp[rows];

        // Generate expanded keys
        while (byGen < (Nr + 1) * stt_lng) {
                // Read previously generated last 4 bytes (last word)
                for (unsigned short i = 0; i < rows; i++) {
                        temp[i] = expandedKey[byGen - rows + i];
                }
                // Perform KeyExpansionCore once for each 16 byte key
                if (byGen % (Nk * rows) == 0) {
                        KeyExpansionCore(temp, rconIdx);
                        rconIdx++;
                } else if ((Nk > 6) && (byGen % (Nk * rows) == (4 * rows))) {
                        SubWord(temp);
                }
                // XOR temp with [bytesGenerated-16] and store in expandedKeys
                for (unsigned short i = 0; i < rows; i++) {
                        expandedKey[byGen] = expandedKey[byGen - Nk * rows] ^ temp[i];
                        byGen++;
                }
        }
}


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
