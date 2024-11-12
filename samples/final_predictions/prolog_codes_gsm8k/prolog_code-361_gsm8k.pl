% Define the total_spent predicate to calculate the total amount spent
total_spent(CostSweater, AmountGiven, TotalSpent) :-
TotalSpent is CostSweater + AmountGiven.
% Define the amount_saved predicate to calculate the amount saved by Andrea
amount_saved(InitialAmount, TotalSpent, AmountSaved) :-
AmountSaved is InitialAmount - TotalSpent.
% Given values from the problem
CostSweater = 11,  % Cost of the sweater
AmountGiven = 4,   % Amount given to her brother
InitialAmount = 36.  % Initial amount Andrea had
% Query predicate to run the program and get the result
query(AmountSaved) :-
total_spent(CostSweater, AmountGiven, TotalSpent),
amount_saved(InitialAmount, TotalSpent, AmountSaved).
% Uncomment the following line to run the query
% ?- query(AmountSaved).
%query(AmountSaved).