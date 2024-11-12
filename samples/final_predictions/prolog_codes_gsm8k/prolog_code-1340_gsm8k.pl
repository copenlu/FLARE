% Define the rule for calculating total number of eggs in both baskets
total_eggs(EggsFirstBasket, TotalEggs) :-
EggsSecondBasket is EggsFirstBasket * 2,
TotalEggs is EggsFirstBasket + EggsSecondBasket.
% Define a predicate to execute the specific query with given values
query(TotalEggs) :-
total_eggs(10, TotalEggs).
% Uncomment the line below to run the query
% ?- query(TotalEggs).
%query(TotalEggs).