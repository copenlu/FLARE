% Define the number of smores each kid and adult wants
total_smore_requirements(9, 2, 6, 1, TotalKidsSmores, TotalAdultSmores, TotalSmores) :-
TotalKidsSmores is 9 * 2,
TotalAdultSmores is 6 * 1,
TotalSmores is TotalKidsSmores + TotalAdultSmores.
% Calculate the number of boxes of graham crackers needed
boxes_needed(TotalSmores, BoxesNeeded) :-
SleevesPerBox is 3,
SmoresPerSleeve is 8,
TotalSleevesNeeded is ceil(TotalSmores / SmoresPerSleeve),
BoxesNeeded is ceil(TotalSleevesNeeded / SleevesPerBox).
% Query predicate to find the number of boxes of graham crackers needed
query(BoxesNeeded) :-
total_smore_requirements(9, 2, 6, 1, TotalKidsSmores, TotalAdultSmores, TotalSmores),
boxes_needed(TotalSmores, BoxesNeeded).
% Uncomment the line below to run the query
% query(BoxesNeeded).
%query(BoxesNeeded).