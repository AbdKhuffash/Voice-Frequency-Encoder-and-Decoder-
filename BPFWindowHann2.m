function Hd2 = BPFWindowHann2
%BPFWINDOWHANN2 Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.10 and Signal Processing Toolbox 8.6.
% Generated on: 22-Jan-2024 14:30:14

% FIR Window Bandpass filter designed using the FIR1 function.

% All frequency values are in Hz.
Fs = 8000;  % Sampling Frequency

N    = 50;       % Order
Fc1  = 1000;     % First Cutoff Frequency
Fc2  = 1200;     % Second Cutoff Frequency
flag = 'scale';  % Sampling Flag
% Create the window vector for the design algorithm.
win = hann(N+1);

% Calculate the coefficients using the FIR1 function.
b  = fir1(N, [Fc1 Fc2]/(Fs/2), 'bandpass', win, flag);
Hd2 = dfilt.dffir(b);

% [EOF]
