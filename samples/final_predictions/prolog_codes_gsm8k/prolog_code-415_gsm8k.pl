% Predicate to calculate the total number of sandwiches needed to serve a given number of people
total_sandwiches(TotalPeople, Sandwiches) :-
Sandwiches is TotalPeople // 4.
% Predicate to calculate the total pounds of meat and cheese needed
total_pounds_ingredients(Sandwiches, MeatPounds, CheesePounds) :-
MeatPounds is Sandwiches,  % Assumed atom/predicate: 1 pound of meat per sandwich
CheesePounds is Sandwiches.  % Assumed atom/predicate: 1 pound of cheese per sandwich
% Predicate to calculate the total cost of meat and cheese
total_cost_ingredients(MeatPounds, CheesePounds, TotalCost) :-
TotalCost is MeatPounds * 7 + CheesePounds * 3.
% Main predicate to calculate the total cost of meat and cheese for making sandwiches to serve a given number of people
total_cost_muffaletta(TotalPeople, TotalCost) :-
total_sandwiches(TotalPeople, Sandwiches),
total_pounds_ingredients(Sandwiches, MeatPounds, CheesePounds),
total_cost_ingredients(MeatPounds, CheesePounds, TotalCost).
% Query to find out how much money Tyson would spend on meat and cheese to make enough sandwiches to serve 20 people
query(TotalCost) :-
total_cost_muffaletta(20, TotalCost).
% Uncomment the following line to run the query
% ?- query(TotalCost).
%query(TotalCost).