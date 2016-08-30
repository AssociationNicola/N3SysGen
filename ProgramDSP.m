function out = ProgramDSP(A)
%ProgramUser('testfile.mem')
%To program the user picoblaze with a .mem file.
%Not DSP should be programmed first with bootprog...
LCDtestprog = getpblazidefile(A);
Send6bitInstructionsPico2;
out=LCDtestprog;
