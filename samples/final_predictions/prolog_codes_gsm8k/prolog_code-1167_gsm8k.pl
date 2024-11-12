% Define the cost of 1 pack of bagels
cost_per_pack(10.00).
% Define the number of bagels in 1 pack
bagels_per_pack(9).
% Define the number of packs ordered
packs_ordered(4).
% Define the discount percentage
discount_percentage(0.10).
% Calculate the total cost of the packs of bagels
total_cost(TotalCost) :-
cost_per_pack(CostPerPack),
packs_ordered(PacksOrdered),
TotalCost is CostPerPack * PacksOrdered.
% Calculate the discount amount
discount_amount(DiscountAmount) :-
total_cost(TotalCost),
discount_percentage(DiscountPercentage),
DiscountAmount is TotalCost * DiscountPercentage.
% Calculate the total number of bagels
number_of_bagels(TotalBagels) :-
bagels_per_pack(BagelsPerPack),
packs_ordered(PacksOrdered),
TotalBagels is BagelsPerPack * PacksOrdered.
% Calculate the cost per single bagel after the discount
calculate_cost_per_bagel(CostPerBagel) :-
total_cost(TotalCost),
discount_amount(DiscountAmount),
number_of_bagels(TotalBagels),
CostPerBagel is (TotalCost - DiscountAmount) / TotalBagels.
% Query predicate to find the cost per single bagel after the discount
query(CostPerBagel) :-
calculate_cost_per_bagel(CostPerBagel).
% Uncomment the line below to run the query
% ?- query(CostPerBagel).
%query(CostPerBagel).