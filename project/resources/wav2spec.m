function wav2spec( filename )
    % takes in a file name, calculates and/or plots spectrogram, and returns it
    
    
    [wav, fs] = audioread(filename);

    % plot
    figure;
    addpath('voicebox');
    spgrambw(wav, fs, 'Jclw');
    
end

