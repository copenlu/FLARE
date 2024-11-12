% Define the time spent on crossword puzzles predicate
time_spent_crossword(TotalTimeCrossword) :-
TotalTimeCrossword is 10 * 3.  % Carmen solved 3 crossword puzzles, each taking 10 minutes
% Define the time spent on sudoku puzzles predicate
time_spent_sudoku(TotalTimeSudoku) :-
TotalTimeSudoku is 5 * 8.  % Carmen solved 8 sudoku puzzles, each taking 5 minutes
% Define the total time spent predicate
total_time_spent(TotalTime) :-
time_spent_crossword(TimeCrossword),  % Calculate time spent on crossword puzzles
time_spent_sudoku(TimeSudoku),  % Calculate time spent on sudoku puzzles
TotalTime is TimeCrossword + TimeSudoku.  % Calculate total time spent on both puzzles
% Query predicate to run the program and get the result
query(TotalTime) :-
total_time_spent(TotalTime).
% Uncomment the following line to run the query
% ?- query(TotalTime).
%query(TotalTime).