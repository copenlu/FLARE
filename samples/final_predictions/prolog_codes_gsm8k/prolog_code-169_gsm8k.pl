% Define a predicate to calculate the financial outcome difference
financial_outcome(Difference) :-
% Calculate the income lost if Jackie does her taxes herself
IncomeLost is 35 * 3,  % $35 per hour for 3 hours
AccountantCost = 90,   % Cost of hiring the accountant
% Calculate the difference in financial outcome
Difference is IncomeLost - AccountantCost.
% Define a query predicate to find out the financial outcome difference
query(Difference) :-
financial_outcome(Difference).
% Uncomment the line below to run the query in SWI-Prolog
% ?- query(Difference).
%query(Difference).