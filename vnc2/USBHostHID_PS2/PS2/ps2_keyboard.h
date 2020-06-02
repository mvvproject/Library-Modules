 
 /* -------------------------------------------------------------------------- */
 
 #ifndef ps2_keyboard_H
 #define ps2_keyboard_H

 typedef struct //KB_parcer ===========
 {
   unsigned char new_data;
   unsigned char usbkb_buf[8];
   unsigned char keys_buf[14];
   unsigned char scan_buf[2];
 } PS2_keyboard_t;
 
 //char CHECK_BIT(unsigned short  wBYTE, char wBIT);
 void PS2_keyboard_init(PS2_keyboard_t* pPS2_keyboard);
 int KBParse(PS2_keyboard_t* PS2_keyboard);
 unsigned char USB_PS2(unsigned char USB_code);

 
 #endif

