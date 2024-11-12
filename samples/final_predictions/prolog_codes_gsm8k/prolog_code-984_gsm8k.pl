% Define the number of holes dug on each day
holes_dug(first_day, 10).
holes_dug(second_day, 13).
holes_dug(third_day, 8).
% Define the number of holes filled in on the third day
holes_filled_in(2).
% Calculate the total number of holes dug on the first three days
total_holes_dug_first_three_days(Total) :-
holes_dug(first_day, FirstDay),
holes_dug(second_day, SecondDay),
holes_dug(third_day, ThirdDay),
Total is FirstDay + SecondDay + ThirdDay.
% Calculate the net number of holes dug after filling in on the third day
net_holes_dug_after_fill_in(Net) :-
total_holes_dug_first_three_days(Total),
holes_filled_in(FilledIn),
Net is Total - FilledIn.
% Calculate the total number of holes dug by the fourth day
total_holes_dug_fourth_day(Total) :-
net_holes_dug_after_fill_in(Net),
Total is 4 * Net.
% Calculate the number of holes dug on the fourth day before finding the treasure
holes_dug_fourth_day_before_treasure(NumHoles) :-
total_holes_dug_fourth_day(Total),
holes_dug(first_day, FirstDay),
NumHoles is Total - FirstDay.
% Query to find the number of holes dug on the fourth day before finding the treasure
query(NumHoles) :-
holes_dug_fourth_day_before_treasure(NumHoles).
% Uncomment the following line to run the query
% ?- query(NumHoles).
%query(NumHoles).