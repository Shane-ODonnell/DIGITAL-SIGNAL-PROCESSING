
close all
clear all



%Task 2

Fs = 8000;    % sampling frequency fs of 8000Hz
note = 68;     % note is a MIDI note number (0–127) 
d = 3 ;       % duration, d of 3 seconds


% Task 5

% Generate and listen to first note
[x1,t1] = createNote(d,note,Fs);
sound(x1,Fs);
pause(d+1);

% Generate and listen to second note
note2 = 72; % C5
[x2,t2] = createNote(d,note2,Fs);
sound(x2,Fs);

% Plot both notes
figure(1)

subplot(2,1,1)
plot(t1,x1)
xlim([0 0.02])
title('Note 1 - Student ID: 22336731')
xlabel('Time (s)')
ylabel('Amplitude')

subplot(2,1,2)
plot(t2,x2)
xlim([0 0.02])
title('Note 2 - C5')
xlabel('Time (s)')
ylabel('Amplitude')


% Task 6 - Test silence
[x_silent,t_silent] = createNote(d,-1,Fs);
sound(x_silent,Fs);

