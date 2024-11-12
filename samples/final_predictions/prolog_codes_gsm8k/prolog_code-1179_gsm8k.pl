% Define the rule to calculate the total number of roses
calculate_total_roses(InitialRoses, RosesGiven, RosesBought, TotalRoses) :-
TotalRoses is InitialRoses - RosesGiven + RosesBought.
% Main predicate to compute the total number of roses Patricia has now
% Params: TotalRoses
calculate_roses(TotalRoses) :-
% Constants
InitialRoses = 30,
RosesGiven = 24,
RosesBought = 15,
% Calculate the total number of roses
calculate_total_roses(InitialRoses, RosesGiven, RosesBought, TotalRoses).
% Query predicate to get the total number of roses Patricia has now
query(TotalRoses) :-
calculate_roses(TotalRoses).
% Uncomment the following line to run the query
% query(TotalRoses).
%query(TotalRoses).