% qualitative bonus

function masked_range = masking_threshold(spl, masker_freq)
    thresholds = [0, 10, 20, 30, 40, 50, 60, 70, 80, 90];
    values = [100, 250, 350, 550, 850, 1200, 2000, 7000, 13000, 13000];

    % Find the index of the last threshold value that is less than or equal to spl
    idx = find(spl > thresholds, 1, 'last');

    % Use the index to determine the masked range
    masked_range = masker_freq + values(min(idx, numel(values)));
end