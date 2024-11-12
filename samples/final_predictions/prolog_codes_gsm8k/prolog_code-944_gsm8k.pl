AbbySlicesPerDay is 2,                      % Assumed slices Abby eats per day
JoshSlicesPerDay is 2 * AbbySlicesPerDay,    % Calculate slices Josh eats per day
TotalSlicesPerDay is AbbySlicesPerDay + JoshSlicesPerDay,  % Calculate total slices consumed per day
LoafTotalSlices is 24,                      % Total slices in the loaf
Days is LoafTotalSlices / TotalSlicesPerDay.  % Calculate number of days loaf will last
query(Days) :-
% Uncomment the following line to run the query
% ?- query(Days).
%query(Days).