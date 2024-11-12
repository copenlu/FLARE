% Define a predicate to calculate the amount of carrots not used
carrots_not_used(TotalCarrots, NumRestaurants, CarrotsPerRestaurant, CarrotsLeft) :-
% Calculate the total amount of carrots distributed to the restaurants
DistributedCarrots is NumRestaurants * CarrotsPerRestaurant,
% Calculate the amount of carrots left after distribution
CarrotsLeft is TotalCarrots - DistributedCarrots.
% Define a query predicate to find out the amount of carrots not used
query(CarrotsLeft) :-
% Total carrots available is 200 pounds, 40 restaurants, each receiving 2 pounds
carrots_not_used(200, 40, 2, CarrotsLeft).
% Uncomment the line below to run the query in SWI-Prolog
% query(CarrotsLeft).
%query(CarrotsLeft).