% Define the initial amount Raymond had
initial_amount(21).
% Define the amount Raymond saved
amount_saved(11).
% Define the amount spent on the comic book
amount_spent(comic_book, 5).
% Define the amount spent on the puzzle
amount_spent(puzzle, 19).
% Define the predicate to calculate the total amount Raymond has left
total_amount_left(Total) :-
initial_amount(Initial),  % Get the initial amount
amount_saved(Saved),  % Get the amount saved
amount_spent(comic_book, ComicBookCost),  % Get the cost of the comic book
amount_spent(puzzle, PuzzleCost),  % Get the cost of the puzzle
Total is Initial + Saved - ComicBookCost - PuzzleCost.  % Calculate the total amount left
% Query predicate to run the program and get the result
query(TotalAmountLeft) :-
total_amount_left(TotalAmountLeft).
% Uncomment the following line to run the query
% ?- query(TotalAmountLeft).
%query(TotalAmountLeft).