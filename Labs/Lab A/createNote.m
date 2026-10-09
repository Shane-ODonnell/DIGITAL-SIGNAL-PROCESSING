




function [x,t] = createNote(d,note,Fs)

    % Calculate number of samples and time vector
    N = Fs * d;
    t = 0 : 1/Fs : (N - 1)/Fs;

    if note == -1
        % Special case: silence
        x = zeros(1,N);
    else
        % Convert MIDI note to frequency
        F0 = 440 * 2^((note - 69)/12);

        % Generate sine wave
        x = sin(2*pi*F0*t);
    end

end
