function [S,F,T,P] = wav2spec( filename )
    % takes in a file name, calculates and/or plots spectrogram, and returns it
    
    % parameters
    fftlength = 256;
    overlap = 4;
    
    [wav, fs] = audioread(filename);
    
    % calculates spectrogram
    [S,F,T,P] = spectrogram(wav(:,1), fftlength, overlap, fftlength, fs);
    
    % plot
    figure;
    spectrogram(wav(:,1), fftlength, overlap, fftlength, fs, 'yaxis');
    
    % comment the next line to not rotate
    %view([-47 22]);
    
    % show the colour bar
    colorbar('EastOutside');
    
    % limit colorbar range
    caxis([-160, -20]);
end

