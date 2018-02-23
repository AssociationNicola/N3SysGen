function a=hex2CFile(fnm)

fdout=fopen([fnm,'.c'],'w');

fdin=fopen([fnm,'.hex'],'r');
a=[];



for n=1:2047
    %only reads up to 2048 instructions to fit in one BRAM!
tline = fgetl(fdin);

   a=[a;tline];
   if hex2dec(tline)>0
fprintf(fdout,'0x%s,\n',tline);
   end
   
end

tline = fgetl(fdin);

   a=[a;tline];
fprintf(fdout,'0x%s\n',tline);


tline = fgetl(fdin);
if hex2dec(tline)>0
    'Error - too many instructions to fit in BRAM '
end


fclose(fdin);
'Read hexfile OK'

'Seem to have ',length(a),' Instructions '



fclose(fdout);
