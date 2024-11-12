% Define the ratio between the number of onions and potatoes Rose bought
ratio(12, 4).
% Calculate the total number of onions and potatoes Sophia bought
calculate_counts(SophiaOnions, SophiaPotatoes) :-
ratio(RoseOnions, RosePotatoes),
SophiaOnions is RoseOnions // 4,
SophiaPotatoes is RosePotatoes // 4.
% Calculate the total count of onions and potatoes Sophia bought
total_counts(TotalOnions, TotalPotatoes) :-
calculate_counts(SophiaOnions, SophiaPotatoes),
TotalOnions is SophiaOnions,
TotalPotatoes is SophiaPotatoes.
% Query to find the total count of onions and potatoes Sophia bought
query(TotalOnions, TotalPotatoes) :-
total_counts(TotalOnions, TotalPotatoes).
% Uncomment the following line to run the query and get the total count of onions and potatoes Sophia bought
% ?- query(TotalOnions, TotalPotatoes).
%query(TotalOnions, TotalPotatoes).