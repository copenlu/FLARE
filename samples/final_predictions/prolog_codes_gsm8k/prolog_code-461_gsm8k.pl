% Predicate to calculate the total cost of the super ticket option
total_cost_super_ticket(Cost) :- Cost is 20 + 1. % Assumed atom/predicate
% Predicate to calculate the total cost of the regular ticket option
total_cost_regular_ticket(Cost) :- Cost is 12 + 3 + 3. % Assumed atom/predicate
% Predicate to calculate the regular price of the popcorn
regular_price_popcorn(SodaCost, Savings, PopcornPrice) :-
total_cost_super_ticket(SuperCost),
total_cost_regular_ticket(RegularCost),
Savings is RegularCost - SuperCost - SodaCost,
PopcornPrice is Savings.
% Query to find the regular price of popcorn given soda cost and savings
query(PopcornPrice) :-
regular_price_popcorn(3, 2, PopcornPrice).
% Uncomment the following line to run the query
% ?- query(PopcornPrice).
%query(PopcornPrice).