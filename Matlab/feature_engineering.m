function features = feature_engineering(sensor_data, window_size)
    % sensor_data: vector of sensor readings
    % window_size: size of the rolling window (e.g., 50 samples)

    num_windows = floor(length(sensor_data) / window_size);
    rms_vals = zeros(num_windows, 1);
    std_vals = zeros(num_windows, 1);

    for i = 1:num_windows
        window = sensor_data((i-1)*window_size + 1 : i*window_size);
        rms_vals(i) = sqrt(mean(window.^2));
        std_vals(i) = std(window);
    end

    features = table(rms_vals, std_vals, 'VariableNames', {'RMS', 'STD'});
end
