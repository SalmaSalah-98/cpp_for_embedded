
#define PORTA 0
#define PORTB 1
#define PORTC 2
#define PORTD 3

#define PIN0  0
#define PIN1  1
#define PIN2  2
#define PIN3  3
#define PIN4  4
#define PIN5  5
#define PIN6  6
#define PIN7  7
// .      .   . 


#define PIN_Direction_OUTPUT  0
#define PIN_Direction_INPUT   1

#define PIN_Value_HIGH        1
#define PIN_Value_LOW         0

class GPOI
{
	protected:
		u8 PORT_Number;//(In case of AVR : there are '4' Ports )
		u8 PIN_Number;//(In case of AVR : there are '8' Pins/Port ) , (In case of ARM : there are '15' Pins/Port )
		u8 PIN_Direction;//(PIN_Direction_INPUT / PIN_Direction_OUTPUT)
		u8 PIN_Value; //(PIN_Value_HIGH / PIN_Value_LOW)
		
	public:
		GPIO();
		~GPIO();
		void Set_Port_Index(u8 PORT);//PORTA  - PORTB - PORTC - PORTD 
		void Set_Pin(u8 PIN); //PIN0 - PIN1 ...
		void Set_Pin_Direction(u8 PORT , u8 PIN , u8 Direction );
		void Set_Pin_Value(u8 PORT , u8 PIN , u8 Value);
		u8 Get_Pin_Value(u8 PORT , u8 PIN);
};