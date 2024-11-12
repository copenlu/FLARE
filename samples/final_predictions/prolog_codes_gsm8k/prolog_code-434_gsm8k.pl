% Predicate to calculate the original cost of the jogger jeans
original_cost_jogger(OriginalCost) :- OriginalCost is 28 + 6.
% Predicate to calculate the total savings made by buying both jeans
total_savings(TotalSavings) :- TotalSavings is 6.
% Predicate to calculate the savings made from the jogger jeans
savings_jogger(SavingsJogger) :-
total_savings(TotalSavings),
SavingsJogger is TotalSavings / 4.
% Predicate to calculate the savings made from the tattered jeans
savings_tattered(SavingsTattered) :-
savings_jogger(SavingsJogger),
total_savings(TotalSavings),
SavingsTattered is TotalSavings - SavingsJogger.
% Predicate to calculate the price difference between jogger and tattered jeans
price_difference(Difference) :-
original_cost_jogger(OriginalCost),
savings_tattered(SavingsTattered),
Difference is OriginalCost - (28 - SavingsTattered).
% Query predicate to find out how much more jogger jeans originally cost than tattered jeans
query(Difference) :-
price_difference(Difference).
% Uncomment the following line to run the query
% ?- query(Difference).
%query(Difference).