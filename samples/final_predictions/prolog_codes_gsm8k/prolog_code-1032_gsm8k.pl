% Define the relationship between the quantities of red, blue, and yellow sticks
total_sticks(Total) :-
R is 9, % Number of red sticks
B is R + 5, % Number of blue sticks
Y is B - 3, % Number of yellow sticks
Total is R + B + Y. % Total number of sticks
% Query to find the total number of sticks
query(Total) :-
total_sticks(Total).
% Uncomment the line below to run the query and find the total number of sticks
% ?- query(Total).
%query(Total).