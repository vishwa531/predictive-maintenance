function show_features_in_table()
    % Load your MAT file
    data = load('equipment_anomaly_data.mat');
    
    % Call your feature extraction function
    features = feature_engineering(data.equipment_anomaly_data, 50);

    % Display in a table GUI
    fig = uifigure('Name', 'Extracted Features');
    uit = uitable(fig);
    uit.Data = features;
    uit.Position = [20 20 500 300];  % Adjust size
end
