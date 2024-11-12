% Define a rule to calculate the percentage of water used for non-industrial purposes
non_industrial_water_percentage(CityWaterPercentage, IndustrialWaterPercentage, NonIndustrialWaterPercentage) :-
NonIndustrialWaterPercentage is 100 - IndustrialWaterPercentage.
% Given values from the problem
CityWaterPercentage = 40,  % Assumed percentage of water used by Colorado City
IndustrialWaterPercentage = 80,  % Assumed percentage of water used for industrial purposes
% Calculate the percentage of water used for non-industrial purposes
non_industrial_water_percentage(CityWaterPercentage, IndustrialWaterPercentage, NonIndustrialWaterPercentage).
% Query predicate to find the percentage of water used for non-industrial purposes
query(NonIndustrialWaterPercentage) :-
non_industrial_water_percentage(CityWaterPercentage, IndustrialWaterPercentage, NonIndustrialWaterPercentage).
% Uncomment the line below to run the query
% query(NonIndustrialWaterPercentage).
%query(NonIndustrialWaterPercentage).