% Define the rule to calculate the total growth of the crocodile
crocodile_growth(GrowthRatePerYear, Years, TotalGrowth) :-
TotalGrowth is GrowthRatePerYear * Years.
% Query to find the total growth of the crocodile in 13 years at a growth rate of 2 inches per year
query_crocodile_growth(TotalGrowth) :-
crocodile_growth(2, 13, TotalGrowth).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_crocodile_growth(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).