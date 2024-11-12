% Define the cost of the manicure
manicure_cost(Cost) :- Cost is 35.
% Define the cost of the pedicure
pedicure_cost(Cost) :- Cost is 40.
% Define the cost of nail art based on the number of nails
nail_art_cost(NumNails, Cost) :- Cost is NumNails * 3.
% Define the total cost after applying the 20% discount for getting both services and adding nail art
total_cost(ManicureCost, PedicureCost, NumNails, Total) :-
Total is (ManicureCost + PedicureCost - (0.2 * (ManicureCost + PedicureCost))) + nail_art_cost(NumNails, 0).
% Define a query predicate to find out the total amount Karen would pay
query(TotalCost) :-
% Manicure cost $35, pedicure cost $40, 10 nails for nail art
total_cost(35, 40, 10, TotalCost).
% Uncomment the line below to run the query in SWI-Prolog
% query(TotalCost).
%query(TotalCost).