% Define dimensions of each raised bed
dimensions(2, 8, 2). % Width, Length, Height in feet
% Define cost and volume per bag of potting soil
cost_per_bag(12).
volume_per_bag(2).
% Calculate the volume of one raised bed
calculate_volume(Width, Length, Height, Volume) :-
Volume is Width * Length * Height.
% Calculate the total cost of potting soil
calculate_total_cost(NumBeds, Cost) :-
dimensions(Width, Length, Height),
volume_per_bag(VolumePerBag),
cost_per_bag(CostPerBag),
calculate_volume(Width, Length, Height, SingleBedVolume),
TotalVolume is SingleBedVolume * NumBeds,
NumBags is TotalVolume / VolumePerBag,
Cost is NumBags * CostPerBag.
% Query to calculate the total cost of potting soil for 10 raised beds
query(Cost) :-
calculate_total_cost(10, Cost).
% Uncomment the following line to run the query and calculate the total cost
% ?- query(Cost).
%query(Cost).