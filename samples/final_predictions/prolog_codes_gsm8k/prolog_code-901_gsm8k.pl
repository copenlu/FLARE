% Define the cost of doing hair (given as $400)
hair_cost(400).
% Define the predicate to calculate the cost of a manicure (1/4 of hair cost)
manicure_cost(HairCost, ManicureCost) :-
ManicureCost is HairCost / 4.
% Define the predicate to calculate the cost of a pedicure (3/4 of manicure cost)
pedicure_cost(ManicureCost, PedicureCost) :-
PedicureCost is 3 * ManicureCost / 4.
% Define the predicate to calculate the total amount spent at the spa
total_spent(HairCost, ManicureCost, PedicureCost, TotalCost) :-
TotalCost is HairCost + ManicureCost + PedicureCost.
% Query predicate to run the program and get the result
query(TotalCost) :-
hair_cost(400),  % Assumed atom/predicate
manicure_cost(400, ManicureCost),  % Calculate manicure cost
pedicure_cost(ManicureCost, PedicureCost),  % Calculate pedicure cost
total_spent(400, ManicureCost, PedicureCost, TotalCost).  % Calculate total spent
% Uncomment the following line to run the query
% ?- query(TotalCost).
%query(TotalCost).