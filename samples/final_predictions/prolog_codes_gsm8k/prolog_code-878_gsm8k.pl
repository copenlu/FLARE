% Define the initial volume passing through the river
initial_volume(4000).
% Calculate the volume passing through the river after heavy rain (doubles the initial volume)
volume_after_rain(Volume) :-
initial_volume(InitialVolume),
Volume is InitialVolume * 2.
% Define the volume increase on the third day (additional 6000 gallons)
volume_increase_third_day(6000).
% Calculate the total volume passing through the river after three days
total_volume_after_three_days(Total) :-
initial_volume(InitialVolume),
volume_after_rain(VolumeAfterRain),
volume_increase_third_day(IncreaseThirdDay),
Total is InitialVolume + VolumeAfterRain + IncreaseThirdDay.
% Query predicate to find the total volume passing through the river after three days
query(TotalVolume) :-
total_volume_after_three_days(TotalVolume).
% Uncomment the line below to run the query
% query(TotalVolume).
%query(TotalVolume).