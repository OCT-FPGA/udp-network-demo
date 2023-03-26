/*
 * Original code from:
 * https://github.com/hplp/AES_implementations
 * */
#pragma once
#include "AEStables.h"

const unsigned short Nb = 4;
const unsigned short rows = 4; // rows
const unsigned short stt_lng = Nb * rows; // state length

// NK_max = 8 for AES 256
// This will allocate (hardware and memory) resources to accommodate all AES
const unsigned short Nk_max = 4; // max [32-bit words] columns in cipher key
const unsigned short CipherKeyLenghth_max = Nk_max * rows; // max bytes in key length
const unsigned short Nr_max = (Nk_max > Nb) ? Nk_max + 6 : Nb + 6; // max number of rounds
const unsigned short ExtdCipherKeyLenghth_max = (Nr_max + 1) * stt_lng; // max bytes in extended key length



