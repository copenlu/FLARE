% Define the total_slices_needed predicate to calculate the total number of slices needed
total_slices_needed(TotalSlices) :-
TotalSlices is 20 * 4.  % 20 friends * 4 slices per friend
% Define the pizzas_needed predicate to calculate the number of pizzas needed
pizzas_needed(TotalSlices, Pizzas) :-
Pizzas is ceil(TotalSlices / 8).  % Each pizza has 8 slices
% Query predicate to run the program and get the result
query(Pizzas) :-
total_slices_needed(TotalSlices),
pizzas_needed(TotalSlices, Pizzas).
% Uncomment the following line to run the query
% ?- query(Pizzas).
%query(Pizzas).