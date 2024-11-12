% Define the rule for calculating the total weight of the weights
calculate_weight(Num, WeightEach, TotalWeight) :-
TotalWeight is Num * WeightEach.
% Define the rule for calculating total weight of the bar setup
total_weight(NumBlue, NumGreen, WeightBlue, WeightGreen, WeightBar, TotalWeight) :-
calculate_weight(NumBlue, WeightBlue, TotalBlueWeight),
calculate_weight(NumGreen, WeightGreen, TotalGreenWeight),
TotalWeight is TotalBlueWeight + TotalGreenWeight + WeightBar.
% Define a predicate to execute the specific query with given values
query(TotalWeight) :-
total_weight(4, 5, 2, 3, 2, TotalWeight).
% Uncomment the line below to run the query
% ?- query(TotalWeight).
%query(TotalWeight).