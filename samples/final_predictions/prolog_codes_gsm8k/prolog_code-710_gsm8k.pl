% Define the number of red squares
red_squares(14).
% Calculate the number of blue squares
blue_squares(Blue) :-
red_squares(Red),
Blue is Red + 4.
% Calculate the number of green squares
green_squares(Green) :-
blue_squares(Blue),
Green is Blue + 6.
% Calculate the number of white squares
white_squares(White) :-
green_squares(Green),
White is Green - 12.
% Calculate the total number of squares
total_squares(Total) :-
red_squares(Red),
blue_squares(Blue),
green_squares(Green),
white_squares(White),
Total is Red + Blue + Green + White.
% Calculate the total square feet
total_square_feet(SquareFeet) :-
total_squares(Total),
SquareFeet is Total. % Each square is 1 foot by 1 foot
% Query to find the total square feet
query(SquareFeet) :-
total_square_feet(SquareFeet).
% Uncomment the following line to run the query and calculate the total square feet
% ?- query(SquareFeet).
%query(SquareFeet).