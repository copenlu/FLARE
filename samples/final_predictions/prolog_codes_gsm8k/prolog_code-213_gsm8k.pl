% Define the total weight of Joe's bag of candy
total_weight_of_candy(ChocolateBars, CandiedApples, ChocolateWeight, TotalWeight) :-
TotalWeight is (ChocolateBars * ChocolateWeight) + (CandiedApples * (ChocolateWeight / 2)).
% Query predicate to run the program and get the result
query(TotalWeight) :-
total_weight_of_candy(25, 80, 40, TotalWeight).  % Given values: 25 chocolate bars, 80 candied apples, 40g weight of each chocolate bar
% Uncomment the following line to run the query
% ?- query(TotalWeight).
%query(TotalWeight).