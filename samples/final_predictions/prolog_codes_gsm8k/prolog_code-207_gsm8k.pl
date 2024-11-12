% Define a predicate to calculate the total barrels of wine produced on the farm
total_wine_production(Acreage, TonsPerAcre, BarrelsPerTon, TotalBarrels) :-
% Calculate the total tons of grapes produced on the farm
TotalTons is Acreage * TonsPerAcre,
% Calculate the total barrels of wine produced from the total tons of grapes
TotalBarrels is TotalTons * BarrelsPerTon.
% Define a query predicate to find out the total barrels of wine produced on Josie's farm
query(TotalBarrels) :-
% Given values: 10 acres, 5 tons per acre, and 2 barrels per ton
total_wine_production(10, 5, 2, TotalBarrels).
% Uncomment the line below to run the query in SWI-Prolog
% query(TotalBarrels).
%query(TotalBarrels).