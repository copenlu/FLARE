% Define the rule to calculate the time taken to dig through soil
time_to_dig_soil(Depth, Time) :-
Time is Depth / 4.
% Define the rule to calculate the time taken to dig through clay
time_to_dig_clay(Depth, Time) :-
Time is Depth / 2.
% Calculate the total time to dig the well
total_time_to_dig_well(TotalTime) :-
time_to_dig_soil(24, SoilTime),  % Depth of soil is 24 feet
time_to_dig_clay(8, ClayTime),   % Depth of clay is 8 feet
TotalTime is SoilTime + ClayTime.
% Query to find the total time to dig the well
query(TotalTime) :-
total_time_to_dig_well(TotalTime).
% Uncomment the following line to run the query
% ?- query(TotalTime).
%query(TotalTime).