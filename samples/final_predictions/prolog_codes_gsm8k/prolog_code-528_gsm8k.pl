% Define constants
cost_per_bag(4).
selling_price_per_bag(8).
bags_per_pack(5).
packs_bought(8).
% Calculate total cost of buying canvas bags
total_cost(TotalCost) :-
cost_per_bag(Cost),
bags_per_pack(BagsPerPack),
packs_bought(PacksBought),
TotalCost is Cost * BagsPerPack * PacksBought.
% Calculate total revenue from selling painted bags
total_revenue(TotalRevenue) :-
selling_price_per_bag(SellingPrice),
bags_per_pack(BagsPerPack),
packs_bought(PacksBought),
TotalRevenue is SellingPrice * BagsPerPack * PacksBought.
% Calculate profit earned
calculate_profit(Profit) :-
total_cost(TotalCost),
total_revenue(TotalRevenue),
Profit is TotalRevenue - TotalCost.
% Query to calculate the profit earned by Tara
query(Profit) :-
calculate_profit(Profit).
% Uncomment the following line to run the query and calculate the profit
% ?- query(Profit).
%query(Profit).