% Define the rule for calculating the total earnings
total_earnings(Half1Count, Price1, Half2Count, Price2, TotalEarnings) :-
EarningsHalf1 is Half1Count * Price1,
EarningsHalf2 is Half2Count * Price2,
TotalEarnings is EarningsHalf1 + EarningsHalf2.
% Define a predicate to execute the specific query with given values
query(TotalEarnings) :-
total_earnings(6, 5, 6, 7, TotalEarnings).
% Uncomment the line below to run the query
% ?- query(TotalEarnings).
%query(TotalEarnings).