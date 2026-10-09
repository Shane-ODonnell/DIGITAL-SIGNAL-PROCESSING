close all
clear all

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% This is the blank template for Lab A, 2026           %%%%%%%%%%%%%%%%
%%                     Do not delete this text          %%%%%%%%%%%%%%%%
%%                     Do not delete this text          %%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Task 1 

% x has:

Fs = 8000;    % sampling frequency fs of 8000Hz
F0 = 900;     % fundamental frequency f0 of 900 Hz
d = 3 ;       % duration, d of 3 seconds

%Task 2

% N the total number of samples in this audio signal.
N = Fs * d; % 8k s^-1 * 3s = 24k

%Task 3

% Vector bsp: v = 0:2:10;         % [0 2 4 6 8 10]
% start : step : end

t = 0 : 1/Fs : (N - 1) / Fs  ;

%Task 4

x = sin( 2 * pi * F0 * t);


%Task 5


%sound(x, Fs) %listen to signal x at a sampling frequency, Fs

%NOTE: HATED THAT SOUND OMG JUMPSCARE HAD TO TURN THE SPEAKER OFF ASAP THAT
%WAS PAINFUL
%ok wasnt bad when the volume was down. just a flat tone, little shaky

%Task 6

x1 = x;
x2 = sin( 2 * pi * 7200 * t);

%Task 7  -----------------------------------------------------------------

%{
figure(1)
xlabel('time')
ylabel('magnitude')
stem(t, x1);
hold on
stem(t, x2);

time_lower_bound = 0;
time_upper_bound = 1/512;

y_lower_bound = min(x) - 1;
y_upper_bound = max(x) + 1;

xlim([time_lower_bound time_upper_bound]);
ylim([y_lower_bound y_upper_bound]) % 



%Observstions: The two signals have approximately equal magnitudes
%  but opposite signs at each sample.

soundsc(x1,Fs); %sounds like an "a" or MI (DE system)
pause(4)
soundsc(x2,Fs); %sounds like an "d" or DO
pause(4) 

%pause of 4 so the 3 second signal can play with a 1s break

% IE: the 7200 Hz signal sounds lower than the 900 Hz 
%   signal because of aliasing.

%}

%Task 8 -----------------------------------------------------------------

%Q: According to Nyquist, what is the minimum value of the sampling 
% degrade frequency that can be used to not degrade x(t)


min_Fs = 2 * F0; %A: double -> 1800Hz 
min_N = min_Fs * d;
min_t = 0 : 1/min_Fs : (min_N - 1) / min_Fs ;
min_x = sin( 2 * pi * F0 * min_t);


%{

figure(2)
sound( getSig(1000), 1000); %Too Low
pause(4);

sound( getSig(1800), 1800); % completely flat 
pause(4);

sound( getSig(1801), 1801); %intermitently missing
pause(4);

sound( getSig(3000), 3000); %accurate representation
pause(4);

sound( getSig(5000), 5000); %accurate representation
pause(4);

%}

%Task 9


%Task 10

%original audio load and listen
load handel.mat

filename = 'handel.wav';
audiowrite(filename,y,Fs);
clear y Fs

[y,Fs] = audioread('handel.wav');

%sound(y, Fs); %fine at Fs= 8000 Hz

% Undersample by a factor of 2 (no anti-aliasing filter)
factor = 2;
y_under = y(1:factor:end);
Fs_under = Fs / factor;

% Time vectors
t_original = (0:length(y)-1) / Fs;
t_under = (0:length(y_under)-1) / Fs_under;

figure(2)

subplot(2,1,1)
plot(t_original, y)
title('Original Handel Audio')
xlabel('Time (s)')
ylabel('Amplitude')

subplot(2,1,2)
plot(t_under, y_under)
title('Undersampled Handel Audio')
xlabel('Time (s)')
ylabel('Amplitude')

sound(y_under, Fs_under);

%{

pause(10)
sound(y, 7000); % distorted


pause(10)
sound(y, 6000); % distorted

pause(10)
sound(y, 4000); %very distorted

pause(10)
sound(y, 2000); %Sounds actually demonic omg like large shipping freights

factor approx 5

%}

function x = getSig(Fs)

    F0 = 900;
    d = 3;

    N = Fs * d;
    t = 0 : 1/Fs : (N - 1)/Fs;
    x = sin(2 * pi * F0 * t);

    % Plot signal
    hold on
    plot(t, x, 'DisplayName', sprintf('Fs = %d Hz', Fs));
    xlim([0 0.01]);
    xlabel('Time (s)');
    ylabel('Amplitude');
    legend show

end