% Define a predicate to calculate the total amount spent on scotch and cognac
total_cost(NumScotchBottles, TotalCostScotch, CostIncreasePercentage, TotalAmountSpent) :-
% Calculate the cost per bottle of scotch
CostPerBottleScotch is TotalCostScotch / NumScotchBottles,
% Calculate the cost per bottle of cognac with the given percentage increase
CostPerBottleCognac is CostPerBottleScotch * (1 + CostIncreasePercentage/100),
% Determine the number of cognac bottles (twice the number of scotch bottles)
NumCognacBottles is 2 * NumScotchBottles,
% Calculate the total cost of cognac
TotalCostCognac is CostPerBottleCognac * NumCognacBottles,
% Calculate the total amount spent by adding the costs of scotch and cognac
TotalAmountSpent is TotalCostScotch + TotalCostCognac.
% Define a query predicate to find out the total amount spent on scotch and cognac
query(TotalAmountSpent) :-
% Given 10 scotch bottles for $600 and 50% cost increase for cognac
total_cost(10, 600, 50, TotalAmountSpent).
% Uncomment the line below to run the query in SWI-Prolog
% query(TotalAmountSpent).
%query(TotalAmountSpent).