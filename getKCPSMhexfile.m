function B = getKCPSMhexfile(A)
%reads a .hex file generated by KCPSMn and returns an array for a Sys Gen
%ram block eg B = getKCPSMhexfile('Prog.hex');
 A=textread(A,'%s');
 B=hex2dec(A)'; 