function a=hex2DSPPico(fnm)
PicoNo=1; %User=0, DSP=1, KP=2,TD=3

fdin=fopen([fnm,'.hex'],'r');
a=[];

s1 = serial('/dev/ttyS0');
s1.BaudRate=115200;
s1.OutputBufferSize=30000;
fopen(s1)


for n=1:2048
    %only reads up to 2048 instructions to fit in one BRAM!
tline = fgetl(fdin);
instruction=hex2dec(tline)*2^11+n-1+PicoNo*2^29;
   a=[a;instruction];
fprintf(s1,'%d\n',instruction);
end

tline = fgetl(fdin);
if hex2dec(tline)>0
    'Error - too many instructions to fit in BRAM '
end


fclose(fdin);
'Read hexfile OK'

'Seem to have ',length(a),' Instructions '



fclose(s1);
