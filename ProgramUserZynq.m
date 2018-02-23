function out = ProgramUser(A)
%ProgramUser('testfile.mem')
%To program the user picoblaze with a .mem file.
%Not DSP should be programmed first with bootprog...
LCDtestprog = getKCPSMhexfile(A);
Send6bitInstructionsPico1;
out=LCDtestprog;
