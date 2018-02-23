function words=hex2coe18(fnm)
%Writes date for 18 bit width BRAM
fdin=fopen([fnm,'.hex'],'r');
a=[];

for n=1:2048
    %only reads up to 2048 instructions to fit in one BRAM!
tline = fgetl(fdin);

   a=[a;dec2bin(hex2dec(tline),18)];

end

tline = fgetl(fdin);
if hex2dec(tline)>0
    'Error - too many instructions to fit in BRAM '
end


fclose(fdin);
'Read hexfile OK'
[words,bits]=size(a);
'Seem to have ',words,' lines of ',bits,'bits wide data'

fdout=fopen([fnm,'.coe'],'w');
fprintf(fdout,'memory_initialization_radix = 2;\n');
fprintf(fdout,'memory_initialization_vector = \n');

for k=1:words-1
fprintf(fdout,'%s,\n',a(k,:));
end;
fprintf(fdout,'%s',a(words,:));

fprintf(fdout,';\n');
fclose(fdout);