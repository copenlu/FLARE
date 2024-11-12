% Predicate to calculate the total number of people attending the soccer game
% Params: NumTeamMembers, NumCoaches, TotalPeople
total_people(NumTeamMembers, NumCoaches, TotalPeople) :-
GuestsPerTeamMember = 2,
TotalPeople is NumTeamMembers + NumCoaches + (NumTeamMembers * GuestsPerTeamMember).
% Predicate to determine the number of pizzas needed
% Params: TotalPeople, NumPizzas
pizzas_needed(TotalPeople, NumPizzas) :-
ServingSize = 3,
NumPizzas is ceil(TotalPeople / ServingSize).
% Predicate to calculate the total cost of pizzas
% Params: NumPizzas, CostPerPizza, TotalCost
total_cost(NumPizzas, CostPerPizza, TotalCost) :-
TotalCost is NumPizzas * CostPerPizza.
% Main predicate to compute the total cost of pizzas for the soccer game
% Params: TotalCost
calculate_total_cost(TotalCost) :-
NumTeamMembers = 12,
NumCoaches = 3,
CostPerPizza = 15,
% Calculate total number of people
total_people(NumTeamMembers, NumCoaches, TotalPeople),
% Calculate number of pizzas needed
pizzas_needed(TotalPeople, NumPizzas),
% Calculate total cost of pizzas
total_cost(NumPizzas, CostPerPizza, TotalCost).
% Query predicate to get the total cost of pizzas
query(TotalCost) :-
calculate_total_cost(TotalCost).
% Uncomment the following line to run the query
% query(TotalCost).
%query(TotalCost).