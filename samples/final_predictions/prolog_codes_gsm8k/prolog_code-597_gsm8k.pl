% Define the rule to calculate Juan's house value
juan_house_value(HerbHouseValue, JuanHouseValue) :-
JuanHouseValue is HerbHouseValue - (0.3 * HerbHouseValue).
% Define the rule to calculate the total value of both houses
total_house_value(HerbHouseValue, JuanHouseValue, TotalValue) :-
TotalValue is HerbHouseValue + JuanHouseValue.
% Query to find the total value of both houses
query_total_house_value(TotalValue) :-
HerbHouseValue = 76000,  % Herb's house value is $76,000
juan_house_value(HerbHouseValue, JuanHouseValue),
total_house_value(HerbHouseValue, JuanHouseValue, TotalValue).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_house_value(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).