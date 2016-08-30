hexdata=[floor(LCDtestprog'/64/64),mod(floor(LCDtestprog'/64),64),mod(LCDtestprog',64)];
hexdata=hexdata(1:end,:)'; %This is for new code!
%hexdata=hexdata(29:end,:)'; %This is for old code!
%list=[64;hexdata(:);80];    %This is for user interface pico program and new stop code (80)
list=[65;hexdata(:);80];    %This is for DSP pico program and new stop code (80)
%list=[64;hexdata(:);65];   %This is for original prog
%Should get LCDtestprog using for example:
%LCDtestprog=getpblazidefile('LCDUartS3e.mem');
%Call this function,
%Then send to Uart to program user interface using:
s1 = serial('/dev/ttyS0');
s1.BaudRate=115200;
s1.OutputBufferSize=15000;
fopen(s1)
fwrite(s1,list);
fclose(s1);