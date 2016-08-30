
s1 = serial('/dev/ttyS0');
s1.BaudRate=115200;

fopen(s1);
fwrite(s1,90)   %Send a Z for ntm version!
fclose(s1);
ProgramUserZynq('BootProg6PlusRAMs.hex');pause(0.1);ProgramDSPZynq('DSPpico.hex');pause(0.1);ProgramUserZynq('UserPico.hex');

