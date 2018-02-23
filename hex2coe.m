function words=hex2coe(fnm)
fdin=fopen([fnm,'.hex'],'r');
a=[];
tline = fgetl(fdin);


a=[];
while ischar(tline)
   a=[a;[dec2bin(hex2dec(fgetl(fdin)),18),dec2bin(hex2dec(tline),18)]];
   tline = fgetl(fdin);
end
fclose(fdin);
'Read hexfile OK'
[words,bits]=size(a);
'Seem to have ',bits,'bits wide data'

fdout=fopen([fnm,'.coe'],'w');
fprintf(fdout,'memory_initialization_radix = 2;\n');
fprintf(fdout,'memory_initialization_vector = \n');

for k=1:words-1
fprintf(fdout,'%s,\n',a(k,:));
end;
fprintf(fdout,'%s',a(words,:));

fprintf(fdout,';\n');
fclose(fdout);