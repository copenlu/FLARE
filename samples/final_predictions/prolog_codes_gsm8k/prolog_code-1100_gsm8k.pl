% Define the rule to calculate the daily banana consumption of the third monkey
third_monkey_banana_consumption(TotalBananas, FirstMonkeyConsumption, SecondMonkeyConsumption, ThirdMonkeyConsumption) :-
TotalFirstTwoConsumption is FirstMonkeyConsumption + SecondMonkeyConsumption,
ThirdMonkeyConsumption is TotalBananas - TotalFirstTwoConsumption.
% Query to find the daily banana consumption of the third monkey
query_third_monkey_banana_consumption(ThirdMonkeyConsumption) :-
third_monkey_banana_consumption(315, 10, 10 + 4, ThirdMonkeyConsumption).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_third_monkey_banana_consumption(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).