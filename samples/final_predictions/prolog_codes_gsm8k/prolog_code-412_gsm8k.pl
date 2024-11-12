% Predicate to calculate the total amount of flour needed for the quadruple batch
total_flour_needed(NormalFlour, QuadrupleFlour) :-
QuadrupleFlour is NormalFlour * 4.
% Predicate to calculate the total amount of milk needed for the quadruple batch
total_milk_needed(NormalMilk, QuadrupleMilk) :-
QuadrupleMilk is NormalMilk * 4.
% Predicate to calculate the number of bags of flour needed
bags_of_flour_needed(QuadrupleFlour, Bags) :-
Bags is ceil(QuadrupleFlour / 2).
% Predicate to calculate the number of bottles of milk needed
bottles_of_milk_needed(QuadrupleMilk, Bottles) :-
Bottles is ceil(QuadrupleMilk / 2).
% Predicate to calculate the difference between bags of flour and bottles of milk
difference_bags_milk(Bags, Bottles, Difference) :-
Difference is Bags - Bottles.
% Main predicate to calculate the number of bags of flour more than bottles of milk Mark needs to buy
mark_ingredients(NormalFlour, NormalMilk, Difference) :-
total_flour_needed(NormalFlour, QuadrupleFlour),
total_milk_needed(NormalMilk, QuadrupleMilk),
bags_of_flour_needed(QuadrupleFlour, Bags),
bottles_of_milk_needed(QuadrupleMilk, Bottles),
difference_bags_milk(Bags, Bottles, Difference).
% Query to find out how many more bags of flour than bottles of milk Mark needs to buy
query(Difference) :-
mark_ingredients(3, 1, Difference).
% Uncomment the following line to run the query
% ?- query(Difference).
%query(Difference).