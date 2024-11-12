% Define the total cost at the first venue based on the number of guests
total_cost_venue1(Guests, TotalCost) :-
TotalCost is 200 + 5 * Guests.
% Define the total cost at the second venue based on the number of guests
total_cost_venue2(Guests, TotalCost) :-
TotalCost is 25 * Guests.
% Define the predicate to calculate the number of guests for equal costs at both venues
equal_cost_guests(Guests) :-
total_cost_venue1(Guests, Cost1),
total_cost_venue2(Guests, Cost2),
Cost1 =:= Cost2.
% Query predicate to run the program and get the result
query(Guests) :-
equal_cost_guests(Guests).
% Uncomment the following line to run the query
% ?- query(Guests).
%query(Guests).