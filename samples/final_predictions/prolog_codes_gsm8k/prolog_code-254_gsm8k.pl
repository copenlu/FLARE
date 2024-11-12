% Predicate to calculate the total cost of party supplies
% Params: CostIngredients, CostPresents, CostDecorations, CostInvitations, CostGoodieBags, TotalCost
total_cost_party_supplies(CostIngredients, CostPresents, CostDecorations, CostInvitations, CostGoodieBags, TotalCost) :-
TotalCost is CostIngredients + CostPresents + CostDecorations + CostInvitations + CostGoodieBags.
% Predicate to split the total cost evenly among three individuals
% Params: TotalCost, CostPerPerson
split_cost_evenly(TotalCost, CostPerPerson) :-
CostPerPerson is TotalCost / 3.
% Main predicate to compute the cost per person for party supplies
% Params: CostPerPerson
calculate_cost_per_person(CostPerPerson) :-
% Constants
CostIngredients = 12,
CostPresents = 43,
CostDecorations = 15,
CostInvitations = 4,
CostGoodieBags = 22,
% Calculate total cost of party supplies
total_cost_party_supplies(CostIngredients, CostPresents, CostDecorations, CostInvitations, CostGoodieBags, TotalCost),
% Split the total cost evenly among three individuals
split_cost_evenly(TotalCost, CostPerPerson).
% Query predicate to get the cost per person
query(CostPerPerson) :-
calculate_cost_per_person(CostPerPerson).
% Uncomment the following line to run the query
% query(CostPerPerson).
%query(CostPerPerson).