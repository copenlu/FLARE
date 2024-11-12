% Define the price of each scoop of ice cream
scoop_price(1.50).
% Define the number of scoops received for the price of 2 scoops (taking advantage of the deal)
deal_scoops(3).
% Calculate the maximum number of scoops Erin can buy within her budget
max_scoops(Budget, MaxScoops) :-
scoop_price(ScoopPrice),
deal_scoops(DealScoops),
DealPrice is 2 * ScoopPrice,
MaxScoops is floor((Budget / DealPrice) * DealScoops).
% Query predicate to find the maximum number of scoops Erin can buy with $6.00
query(MaxScoops) :-
max_scoops(6.00, MaxScoops).
% Uncomment the line below to run the query
% query(MaxScoops).
%query(MaxScoops).