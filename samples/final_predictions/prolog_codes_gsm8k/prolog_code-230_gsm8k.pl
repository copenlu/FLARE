% Define rental rates
rental_rate(canoe, 30).
rental_rate(raft, 18).
% Define rule to calculate total cost for a rental
total_cost(RentalType, Hours, TotalCost) :-
rental_rate(RentalType, Rate),
TotalCost is Rate * Hours.
% Calculate total cost for Carlos and Benji's rentals altogether
total_cost(carlos, 3, CarlosCost),
total_cost(benji, 5, BenjiCost),
TotalCostAltogether is CarlosCost + BenjiCost.
% Query predicate to run the program and get the result
query(TotalCostAltogether) :-
TotalCostAltogether.
% Uncomment the following line to run the query
% ?- query(TotalCostAltogether).
%query(TotalCostAltogether).