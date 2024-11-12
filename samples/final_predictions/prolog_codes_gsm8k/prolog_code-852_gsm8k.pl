% Define the base installation cost
base_installation_cost(129.00).
% Calculate the cost for additional items based on the quantity
additional_item_cost(ItemQuantity, ItemCost) :-
ItemCost is ItemQuantity * 15.00.
% Calculate the total installation cost for Angela
total_installation_cost(Mirrors, Chandeliers, Pictures, TotalCost) :-
base_installation_cost(BaseCost),
additional_item_cost(Mirrors - 4, AdditionalMirrorsCost),
additional_item_cost(Chandeliers - 1, AdditionalChandeliersCost),
additional_item_cost(Pictures - 10, AdditionalPicturesCost),
TotalCost is BaseCost + AdditionalMirrorsCost + AdditionalChandeliersCost + AdditionalPicturesCost.
% Query predicate to find the total cost for Angela's installation
query(TotalCost) :-
total_installation_cost(6, 2, 20, TotalCost).
% Uncomment the line below to run the query
% query(TotalCost).
%query(TotalCost).