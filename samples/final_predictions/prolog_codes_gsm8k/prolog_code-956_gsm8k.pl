% Define the rule to calculate the number of new tables needed
calculate_tables_needed(TotalBoxes, ExistingTables, BoxesPerTable, NewTables) :-
TotalBoxes is 10 * 5 + 10, % Calculate total boxes
TotalTablesNeeded is ceil(TotalBoxes / BoxesPerTable), % Calculate total tables needed
NewTables is TotalTablesNeeded - ExistingTables. % Calculate new tables needed
% Query to find the number of new tables needed
query_new_tables_needed(NewTables) :-
calculate_tables_needed(60, 15, 2, NewTables).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_new_tables_needed(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).