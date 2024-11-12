% Define the number of green jellybeans
green_jellybeans(17).
% Define the number of red jellybeans based on the number of green jellybeans
red_jellybeans(Red) :- green_jellybeans(Green), Red is 2 * Green.
% Define the total number of jellybeans
total_jellybeans(60).
% Calculate the number of blue jellybeans based on the given information
blue_jellybeans(Blue) :-
green_jellybeans(Green),
red_jellybeans(Red),
total_jellybeans(Total),
Blue is Total - (Green + Red).
% Query predicate to run the program and get the result
query(Blue) :-
blue_jellybeans(Blue).
% Uncomment the following line to run the query
% ?- query(Blue).
%query(Blue).