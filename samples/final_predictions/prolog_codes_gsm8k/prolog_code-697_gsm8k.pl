% Define constants
max_load_capacity(700).
average_adult_weight(80).
% Calculate total weight of Jack and adults
total_weight(NumAdults, TotalWeight) :-
average_adult_weight(WeightPerAdult),
TotalWeight is WeightPerAdult * NumAdults.
% Calculate excess weight in the elevator
calculate_excess_weight(NumAdults, ExcessWeight) :-
max_load_capacity(MaxLoad),
total_weight(NumAdults, TotalWeight),
ExcessWeight is TotalWeight - MaxLoad.
% Query to calculate the excess weight when Jack and 8 other adults ride the elevator
query(ExcessWeight) :-
calculate_excess_weight(8, ExcessWeight).
% Uncomment the following line to run the query and calculate the excess weight
% ?- query(ExcessWeight).
%query(ExcessWeight).