% Predicate to calculate the total cost of chicken salad
% Params: NumPeopleChickenSalad, CostPerPersonChickenSalad, TotalCostChickenSalad
total_cost_chicken_salad(NumPeopleChickenSalad, CostPerPersonChickenSalad, TotalCostChickenSalad) :-
TotalCostChickenSalad is NumPeopleChickenSalad * CostPerPersonChickenSalad.
% Predicate to calculate the total cost of pasta salad
% Params: NumPeoplePastaSalad, CostPerPersonPastaSalad, TotalCostPastaSalad
total_cost_pasta_salad(NumPeoplePastaSalad, CostPerPersonPastaSalad, TotalCostPastaSalad) :-
TotalCostPastaSalad is NumPeoplePastaSalad * CostPerPersonPastaSalad.
% Predicate to calculate the total amount Molly will pay for catering
% Params: TotalCostChickenSalad, TotalCostPastaSalad, TotalAmount
total_amount_molly_pays(TotalCostChickenSalad, TotalCostPastaSalad, TotalAmount) :-
TotalAmount is TotalCostChickenSalad + TotalCostPastaSalad.
% Main predicate to compute the total amount Molly will pay
% Params: TotalAmount
calculate_total_amount_molly_pays(TotalAmount) :-
% Constants
NumPeopleChickenSalad = 10,
CostPerPersonChickenSalad = 6.50,
NumPeoplePastaSalad = 6,
CostPerPersonPastaSalad = 6,
% Calculate total cost for each salad
total_cost_chicken_salad(NumPeopleChickenSalad, CostPerPersonChickenSalad, TotalCostChickenSalad),
total_cost_pasta_salad(NumPeoplePastaSalad, CostPerPersonPastaSalad, TotalCostPastaSalad),
% Calculate total amount Molly will pay
total_amount_molly_pays(TotalCostChickenSalad, TotalCostPastaSalad, TotalAmount).
% Query predicate to get the total amount Molly will pay
query(TotalAmount) :-
calculate_total_amount_molly_pays(TotalAmount).
% Uncomment the following line to run the query
% query(TotalAmount).
%query(TotalAmount).