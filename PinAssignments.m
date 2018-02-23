


%Class D outputs
HINA={'N7'}
LINA={'N8'}
HINB={'R7'}
LINB={'R8'}

%Attenuate RF input
Atten={'N11'}

%ADC control
SDOB={'N12'}
SDOA={'R12'}
SCK={'R13'}

Csbar={'M12'}
Cal={'L12'}


ADC_G3={'M11'}
ADC_G2={'N14'}
ADC_G1={'P11'}
ADC_G0={'P10'}




%GPIO connectors
USBA_2={'M9'}
USBA_3={'R11'}
USBA_4={'R15'}
USBA_5={'R10'}

USBB_2={'P9'}
USBB_3={'P8'}
USBB_5={'L13'}


%Allocated GPIO
RS232tx=USBB_3
RS232rx=USBB_5
Strobe=USBB_2

%LEDs
RGB_B={'J15'}
RGB_G={'K12'}
RGB_R={'L14'}

%Transceiver control
TX_Low={'P15'}
MatchZ={'E12'}      %Relay control to short matching inductor for 31kHz or 87kHz

%Mic control
PTT={'P14'}
PWMAudio={'M15'}  %(otherwise known as audio

%Display
LCD_RW={'G15'}
LCD_E={'F14'}
LCD_RS={'F13'}

LCD_V0={'E11'}

LCD_D0={'J13'}
LCD_D1={'J14'}
LCD_D2={'F15'}
LCD_D3={'H14'}
LCD_D4={'G12'}
LCD_D5={'L15'}
LCD_D6={'M14'}
LCD_D7={'K15'}



%JTAG (also used for keypad)
TCK={'G9'}
TMS={'L9'}
TDI={'L7'}
TDO={'L8'}

%Keypad
Touch0=TCK
Touch1=TMS
Touch2=TDI
Touch3={'E13'}
Keep_On={'F12'}

TouchOn=Touch0
TouchSelect=Touch1
TouchDown=Touch2
TouchUp=Touch3


%Bluetooth interface 
PCMS={'M10'}
PCMO={'N13'}
TXD={'P13'}
RXD={'H13'}
PCMI={'H12'}
PCMC={'H11'}
RES={'G11'}




