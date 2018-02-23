function words=gencoe(fnm)
words=1024;

fdout=fopen([fnm,'.coe'],'w');
fprintf(fdout,'memory_initialization_radix = 2;\n');
fprintf(fdout,'memory_initialization_vector = \n');

for k=1:words-1
fprintf(fdout,'%s,\n',dec2bin(mod((2^15-1)*sin([k*2*pi/words]),2^16));
end;
fprintf(fdout,'%s',dec2bin(0,16));

fprintf(fdout,';\n');
fclose(fdout);