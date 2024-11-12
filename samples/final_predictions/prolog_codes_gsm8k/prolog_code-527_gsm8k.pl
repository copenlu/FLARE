% Define the total cost of the house and lot
total_cost(120000).
% Calculate the cost of the house based on the cost of the lot
house_cost(HouseCost) :-
total_cost(Total),
LotCost is Total / 4, % Assumed atom: Lot cost is 1/4 of the total cost
HouseCost is LotCost * 3. % Assumed predicate: House cost is three times the lot cost
% Query predicate to run the program and get the result
query(HouseCost) :-
house_cost(HouseCost).
% Uncomment the following line to run the query
% ?- query(HouseCost).
%query(HouseCost).