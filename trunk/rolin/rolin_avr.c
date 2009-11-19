//http://rolin.altaimpedancia.org - más información en el pié de página
//Electrónica con Software Libre, Free Hardware Design y Open Source Hardware

#include <avr/io.h>			// The io.h already includes the io-avr.h and the iomacros.h !!!
					// Also the correct address to token (e.g. TIFR = $36) include
					// file is automatically loaded 
					// (the device must be specified in the makefile!)
#include <avr/pgmspace.h> 	// For storing strings in the flash memory
#include <avr/interrupt.h>	// For using interupts, e.g. for incoming RS232 data handling
#include <string.h>		// For dealing with strings (arrays of characters)
#include <stdio.h>

// ----- Defines for better code readability -----
	#define LF	        	10	// ASCII(10) = LF
	#define UART_BUF_LENGTH		128	// max. 128 characters for command line entrys
	#define LED_DIR			DDRC
	#define LED_PORT		PORTC			 
	#define LED_RED			_BV(0)

// ----- Global variables -----
	char uart_buffer[UART_BUF_LENGTH];
	unsigned char uart_pos;

// ----- Prototypes for functions -----
	void reset_handler(void);
	void pause(unsigned int n);
	void send_ser(unsigned char sendbyte);
	void send_ser_string(char *send_string);
	void send_help_text(void);

// =================================== Main program starts here ===================================
int main(void) 
{
	reset_handler();			 // Initialize all necessary parameters
	LED_PORT |= LED_RED;			 // switch on LED for 3 seconds 
	pause(3000);
      	LED_PORT &=  ~LED_RED;			 // switch off LED
	send_help_text();			 // Notivy the host that the AVR is working and show available commands
	for(;;);				 // Endless loop - From now on all actions are triggered via Interupts from incomming commands via RS232
}

//=================================== Subroutines from here on ====================================
//---------------------------------------- reset handler ------------------------------------------
void reset_handler(void)
{
	//------------------- configure GPIOs and set to their default settings -----------------------
	LED_DIR  |=  LED_RED;								// configure LED GPIO as output
	//	LED_PORT &=  ~LED_RED;								// switch off LEDs and switch outputs (output is active low)
	
	//--------------------------- configure UART (RS232-Interfache) -------------------------------
	UBRR0H = 0;
	UBRR0L = 64;						// (10MHz /16*9600Baud) - 1 = 64.104 que es aproximadamente 64
	UCSR0B = _BV(RXEN0) | _BV(TXEN0) | _BV(RXCIE0);		// UART RX and TX on and RX interupt on
								// (The TX output pin is automatically set as output by enabling the UART TX)			 
	//----------------------------- Enable Interupts in general -----------------------------------
	sei();
	pause(3);        //Esto es para evitar que se ejecute la siguiente instrucción antes de que se activen las interrupciones (estaba pasando)
}

//-------------------------------------------- pause ----------------------------------------------
// waits for n milliseconds (pause for 1ms to 65sec)
void pause(unsigned int n)
{
	unsigned int t;
	TCCR0B = 0x03; 						// 8bit counter on, prescaler factor 64 
	for( t=0 ; t<n ; t++ )					// the loop lasts 1ms -> perform the loop n times
	{
		TIFR0 = _BV(TOV0);				// reset the overflow flag for the 8bit counter 	
		TCNT0 = 198;					// preset the counter to 198 -> 8bit overflow after 1ms
		while( !( TIFR0 & _BV(TOV0) ) );		// wait in loop until overflow in timer0
	}    						        // (i.e. wait for TOV0 Bit is set in TIFR) 
}

//------------------------------- UART receiver complete interrupt --------------------------------
ISR(USART_RX_vect)
{
	unsigned char uart_char='\0';
	uart_char=UDR0;						// read received character from UART input buffer

	if( uart_char >= 'a' && uart_char <='z' )		// convert lower case characters to upper case, so
		uart_char -= ( 'a' - 'A' );			// the input is not case-sensitive any more

	if( uart_pos< (UART_BUF_LENGTH-1) && uart_char>=32)     // take over the new character into the buffer
	  {                                                     // if the buffer is not full and no ctrl character
	    uart_buffer[uart_pos] = uart_char;
	    uart_pos++;
	  }



	if( uart_char==LF )		// if the received character was a LF (ASCII 10) which is the final termination of a string which is sent from
	{				// the WRT54GL with the "echo Text > /dev/tts/1" command (The the Text a CR + LF is always added automatically)
	  if( strncmp( uart_buffer, "HELP", 4 ) == 0 )          // if the help command was received
	    {
	      send_help_text();
	      LED_PORT |= LED_RED;		 // switch on LED for 9 seconds 
	      pause(9000);
	      LED_PORT &=  ~LED_RED;		 // switch off LED
	    }
	  // after a LF we start with a new (empty) buffer at the first postion
	  memset( uart_buffer, ' ', UART_BUF_LENGTH );         // overwrite the uart buffer with all spaces
	  uart_pos = 0;                                        // reset the postion pointer for the uart buffer
	}
}

//------------------------------ send one character via RS232 -------------------------------------
// Waits until the TX buffer in the UART is free, then transmits the character
void send_ser(unsigned char sendbyte)
{
	while( !(UCSR0A & _BV(UDRE0) ) );			// wait for UART data register empty
	UDR0 = sendbyte;					// send the character via UART
}

// ------------------------------------ send string to RS232 --------------------------------------
void send_ser_string(char *send_string)
{
	char send_char;
	while( (send_char = *send_string)!='\0' )
	{
		send_ser(send_char);
		send_string++;
	}
}

// --------------------------------- send help text via serial port -------------------------------
void send_help_text(void)
{
	send_ser_string("Link AVR<->WRT54GL OK\n");
}

/* Para escribir cdigo, compilar y programar el AVR se usó Software Libre:
 * Debian GNU/Linux como sistema operativo
 * GNU Emacs 22.3.1 para escribir el codigo C (.c)
 * gcc-avr 1:4.3.3-1, gcc  4.3.3 y make  3.81 para compilar  
 * avrdude  5.8 y make 3.81 para programar el AVR atmega168P
 * Autor: Fredy Pulido López (digitalfredy)
 * Copyright: http://www.fsf.org/licensing/licenses/gpl.html
 * Agradecimientos:
  * Universidad Distrital Francisco José de Caldas
   * Ronald Gutierrez: por valerme rolin como nota para  análisis de circuitos 1
   * José Noé Poveda: por valerme rolin como nota para taller de circuitos
  * nerdbots.info por prestarme el atmega168P pues mi atmega8535 solo funcionaba a 5V
  * Jorge Guevara (jegc): ayuda con consultas varias y apoyo moral :P
Este programa esta basado en WRT54GL_add_on.c original de Herbert Dingfelder, DL5NEG 
 */

