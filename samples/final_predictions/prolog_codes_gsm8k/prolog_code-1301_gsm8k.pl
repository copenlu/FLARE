% Define the rule to calculate the final value after depreciation
depreciation(InitialValue, DepreciationPercentage, FinalValue) :-
DepreciationAmount is InitialValue * DepreciationPercentage / 100,
FinalValue is InitialValue - DepreciationAmount.
% Calculate the value of the boat after three years of depreciation
value_after_three_years(InitialValue, FinalValue) :-
depreciation(InitialValue, 30, ValueAfterYear1),  % Depreciation in the first year
depreciation(ValueAfterYear1, 30, ValueAfterYear2),  % Depreciation in the second year
depreciation(ValueAfterYear2, 20, FinalValue).  % Depreciation in the third year
% Query to find the value of the boat after three years
query_value_after_three_years(FinalValue) :-
value_after_three_years(9000, FinalValue).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_value_after_three_years(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).