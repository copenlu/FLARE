% Predicate to calculate the amount saved by Ethan
amount_saved(OriginalCost, SavedAmount) :-
SavedAmount is 0.2 * OriginalCost.  % Ethan saves 20% of the original cost
% Predicate to calculate the total cost incurred by Ethan
total_cost(OriginalCost, SavedAmount, TotalCost) :-
TotalCost is OriginalCost - SavedAmount.  % Total cost is original cost minus the amount saved
% Main predicate to calculate the total cost incurred by Ethan for making his own hand-painted wallpaper
ethan_total_cost(TotalCost) :-
OriginalCost = 400,  % Cost of the hand-painted wallpaper
amount_saved(OriginalCost, SavedAmount),
total_cost(OriginalCost, SavedAmount, TotalCost).
% Query to find out the total cost incurred by Ethan for making his own hand-painted wallpaper
query(TotalCost) :-
ethan_total_cost(TotalCost).
% Uncomment the following line to run the query
% ?- query(TotalCost).
%query(TotalCost).