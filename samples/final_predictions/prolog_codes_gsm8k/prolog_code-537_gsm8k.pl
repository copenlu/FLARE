% Define the number of tulips that can fit in a row for red and blue tulips
red_tulips_per_row(6).
blue_tulips_per_row(8).
% Define the total number of red and blue tulips purchased
total_red_tulips(36).
total_blue_tulips(24).
% Calculate the number of rows needed for red and blue tulips
rows_needed_red(Rows) :-
total_red_tulips(TotalRed),
red_tulips_per_row(RedPerRow),
Rows is TotalRed // RedPerRow.
rows_needed_blue(Rows) :-
total_blue_tulips(TotalBlue),
blue_tulips_per_row(BluePerRow),
Rows is TotalBlue // BluePerRow.
% Find the total number of rows by taking the maximum of rows needed for red and blue tulips
total_rows(TotalRows) :-
rows_needed_red(RedRows),
rows_needed_blue(BlueRows),
TotalRows is max(RedRows, BlueRows).
% Query predicate to run the program and get the result
query(TotalRows) :-
total_rows(TotalRows).
% Uncomment the following line to run the query
% ?- query(TotalRows).
%query(TotalRows).