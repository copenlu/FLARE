% Define initial values
initial_candies(100).
candies_sold(150).
additional_order(100).
% Calculate total candies after additional order
total_candies(Total) :-
initial_candies(Initial),
additional_order(Additional),
Total is Initial + Additional.
% Calculate remaining candies to be sold
remaining_candies(Remaining) :-
total_candies(Total),
candies_sold(Sold),
Remaining is Total - Sold.
% Query to calculate how many candies Dale still needs to sell
query(Remaining) :-
remaining_candies(Remaining).
% Uncomment the following line to run the query and calculate the remaining candies to be sold
% ?- query(Remaining).
%query(Remaining).