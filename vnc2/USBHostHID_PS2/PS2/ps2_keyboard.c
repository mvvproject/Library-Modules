//-----------------------------------------------------------------[02.06.2015]
// 21.05.2015	dsp		initail relise
// 22.05.2015	MVV		Bit 7=1 указывает на префикс 0xE0, добавлены: 0x00=Overrun Error, 0x80=POST Fail, 0x7f=None. Исправлен код Caps Lock
// 24.05.2015	MVV		тестовая версия UART 9600 8bit nc stop1 nc
// 25.05.2015	MVV		добавлен PS2_thread
// 02.06.2015	dsp		fix 0x83 (key F7)

#include <string.h>
#include "ps2_keyboard.h"
#include "ps2dev.h"

#define ERROR(x)

void message(char *msg);
void number(unsigned char val);
	
//Bit 7=1 указывает на префикс 0xE0, 0x00=Overrun Error, 0x80=POST Fail, 0x7f=None
unsigned char USB_PS2_tb [] ={	0x7f, 0x00, 0x80, 0x7f, 0x1c, 0x32, 0x21, 0x23, 
								0x24, 0x2b, 0x34, 0x33, 0x43, 0x3b, 0x42, 0x4b,
								//0x10
								0x3a, 0x31, 0x44, 0x4d, 0x15, 0x2d, 0x1b, 0x2c, 
								0x3c, 0x2a, 0x1d, 0x22, 0x35, 0x1a, 0x16, 0x1e,
								//0x20
								0x26, 0x25, 0x2e, 0x36, 0x3d, 0x3e, 0x46, 0x45, 
								0x5a, 0x76, 0x66, 0x0d, 0x29, 0x4e, 0x55, 0x54,
								//0x30
								0x5b, 0x5d, 0x5d, 0x4c, 0x52, 0x0e, 0x41, 0x49, 
								0x4a, 0x58, 0x05, 0x06, 0x04, 0x0c, 0x03, 0x0b, 
								//0x40---
								0x83, 0x0a, 0x01, 0x09, 0x78, 0x07, 0xfc, 0x7e,  // Print Screen
								0xf7, 0xf0, 0xec, 0xfd, 0xf1, 0xe9, 0xfa, 0xf4,  // Break
								//0x50---
								0xeb, 0xf2, 0xf5, 0x77, 0xca, 0x7c, 0x7b, 0x79,
								0x1a, 0x69, 0x72, 0x7a, 0x6b, 0x73, 0x74, 0x6c,
								//0x60---
								0x75, 0x7d, 0x70, 0x71, 0x61, 0xaf, 0x7f, 0x0f,
								0x2f, 0x37, 0x3f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f,
								//0x70---
								0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f,
								0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f,
								//0x80 =======================================
								0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x6d, 0x7f, 0x51,
								0x13, 0x6a, 0x64, 0x67, 0x27, 0x7f, 0x7f, 0x7f,
								//0x90
								0x7f, 0x7f, 0x63, 0x62, 0x5f, 0x7f, 0x7f, 0x7f,
								0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f,
								//0xA0
								0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f,
								0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f,
								//0xB0
								0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f,
								0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f,
								//0xC0
								0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f,
								0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f,
								//0xD0
								0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f,
								0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f,
								//0xE0
								0x14, 0x12, 0x11, 0x9f, 0x94, 0x59, 0x91, 0xa7,
								0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f,
								//0xF0
								0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f,
								0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f
							};

void SET_BIT(unsigned short *wBYTE, unsigned char wBIT)
{
	*wBYTE |= (0x01<< wBIT);
}

//void RESET_BIT(unsigned short wBYTE, unsigned char wBIT)
//{
//	wBYTE  &= ~(0x01<< wBIT);
//}

char CHECK_BIT(unsigned short  wBYTE, unsigned char wBIT)
{
	 wBYTE = (wBYTE >> wBIT) & 0x01 ;
	 return (unsigned char)wBYTE; 
}
 
void PS2_keyboard_init(PS2_keyboard_t* pPS2_keyboard)
{
		pPS2_keyboard->new_data = 0x00;
		memset(pPS2_keyboard->scan_buf, 0x00, 2 * sizeof(unsigned char));
		memset(pPS2_keyboard->keys_buf, 0x00, 14 * sizeof(unsigned char));
}

// KB PARSER
int KBParse(PS2_keyboard_t* pPS2_keyboard)
{
    unsigned char i;
    unsigned char j;
    unsigned char n;
	unsigned char x;
    unsigned short test;
    unsigned char fkeys_buf[8];
    unsigned char *keys_buf[14];
    unsigned char *scan_buf[2];
	unsigned char *new_data;
	char *eol = "\r\n";

	// check new keys
	test = 0x0000;
	x = 0x00;
	
	// log
	message("keys_buf:  "); for (i=0; i<14; i++){ number(pPS2_keyboard->keys_buf[i]); message(" "); } message(eol);

	// fkeys & keys
	for (i=0; i<8; i++){
		if (pPS2_keyboard->usbkb_buf[0] & (1<< i)){
			fkeys_buf[i] = 0xE0+i;
		} else {
			fkeys_buf[i] = 0x00;
		}
		// check press and release in fkeys
		if (fkeys_buf[i] == pPS2_keyboard->keys_buf[i]){
			SET_BIT(&test, i);
		}
		// check press and release in keys
		if (i<6){
			for (j=2; j<8; j++){
				if (pPS2_keyboard->usbkb_buf[j] == pPS2_keyboard->keys_buf[8+i]){
					SET_BIT(&test, 8+i);
					j = 8;
				}
			}
		}
	}

	pPS2_keyboard->new_data = 0x00;

	for (i=0; i<14; i++){
		// release 
		if (CHECK_BIT(test, i) == 0x00){
			n = USB_PS2(pPS2_keyboard->keys_buf[i]);
			// log
			message("n release: "); number (n); message(eol);
			if (((n < 0x7F) && (n > 0x00)) || n == 0x83){
				PS2KB_write(0xF0);	// Break
				PS2KB_write(n);
				// log
				message("PS2KB <- F0 "); number(n); message(eol);
			} else if ((n > 0x80) && (n != 0x83)){
				PS2KB_write(0xE0);	// Pref
				PS2KB_write(0xF0);	// Break
				PS2KB_write(n-0x80);
				// log
				message("PS2KB <- E0 F0 ");	number(n-0x80); message(eol);
			}
		}
		// press 
		if (i<8){
			n = USB_PS2(fkeys_buf[i]);
		} else {
			n = USB_PS2(pPS2_keyboard->usbkb_buf[i-6]);
		}
		// log
		message("n press: "); number(n); message(eol);
		if ((n > 0x80) && (n != 0x83)){
			PS2KB_write(0xE0);	// Pref
//			vos_delay_msecs(50);
			PS2KB_write(n-0x80);
//			vos_delay_msecs(100);
			pPS2_keyboard->scan_buf[0] = 0xE0;
			pPS2_keyboard->scan_buf[1] = n-0x80;
			x = 0x01;
		// log
			message("PS2KB <- E0 "); number(n-0x80); message(eol);
		} else if (n == 0x80){
			PS2KB_write(0xFC);	//POST Fail
			pPS2_keyboard->scan_buf[0] = 0xFC;
			pPS2_keyboard->scan_buf[1] = 0xFC;
			x = 0x01;
			// log
			message("PS2KB <- FC (POST Fail)"); message(eol);
		} else if ((n < 0x7F) || (n == 0x83)){
			PS2KB_write(n);
			pPS2_keyboard->scan_buf[0] = n;
			pPS2_keyboard->scan_buf[1] = n;
			x = 0x01;
			// log
			message("PS2KB <- "); number(n); message(eol);
		}		
		// update keys_buf
		if (i<8){
			pPS2_keyboard->keys_buf[i] = fkeys_buf[i];
		} else {
			pPS2_keyboard->keys_buf[i] = pPS2_keyboard->usbkb_buf[i-6];
		}
	}
	
	pPS2_keyboard->new_data = x;

	// log
	message("fkeys_buf: "); for (i=0; i<8; i++){ number(fkeys_buf[i]); message(" "); } message(eol);
	message("keys_buf:  "); for (i=0; i<14; i++){ number(pPS2_keyboard->keys_buf[i]); message(" "); } message(eol);
	message("scan_buf:  "); number(pPS2_keyboard->scan_buf[0]); message(" "); number(pPS2_keyboard->scan_buf[1]);message(eol);
	message("test flag: "); n = test>>8; number (n); n = test; number (n); message(eol);

	return 0;
 }

unsigned char USB_PS2(unsigned char USB_code)
{
	unsigned char PS2_code;

	PS2_code = USB_PS2_tb[USB_code];
	return PS2_code;
}
