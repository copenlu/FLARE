% Define the rule to calculate the remaining shoe boxes
remaining_shoe_boxes(BlueInitial, RedInitial, BlueUsed, RedUsed, BlueRemaining, RedRemaining) :-
BlueRemaining is BlueInitial - BlueUsed,              % Calculate remaining blue shoe boxes
RedRemaining is RedInitial - (RedUsed / 3).          % Calculate remaining red shoe boxes
% Query to find the remaining blue and red shoe boxes
query_remaining_shoe_boxes(BlueRemaining, RedRemaining) :-
remaining_shoe_boxes(7, 9, 3, 9/3, BlueRemaining, RedRemaining).
% Define a predicate that returns the correct numerical answer when queried
query(BlueRemaining, RedRemaining) :-
query_remaining_shoe_boxes(BlueRemaining, RedRemaining).
% Uncomment the following line to run the query
% ?- query(BlueRemaining, RedRemaining).
%query(BlueRemaining, RedRemaining).