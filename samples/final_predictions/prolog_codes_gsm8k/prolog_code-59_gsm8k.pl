% Define the rule to calculate the maximum number of boxes that can be loaded onto the truck
max_boxes_loaded(MaxBoxes) :-
WeightLimit = 5000,         % Assumed weight limit of the bridge in pounds
CombinedWeight = 3755,      % Assumed combined weight of the driver and empty truck in pounds
MaxWeightAdded is WeightLimit - CombinedWeight,  % Calculate the maximum weight that can be added to the truck
BoxWeight = 15,            % Assumed weight of each box in pounds
MaxBoxes is floor(MaxWeightAdded / BoxWeight).  % Calculate the maximum number of boxes that can be loaded
% Query to find the maximum number of boxes that can be loaded onto the truck
query(MaxBoxes) :-
max_boxes_loaded(MaxBoxes).
% Uncomment the following line to run the query
% ?- query(MaxBoxes).
%query(MaxBoxes).