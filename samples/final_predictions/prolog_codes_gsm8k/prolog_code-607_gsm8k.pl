% Define the total cost of buying the boots on Amazon
total_cost_amazon(TotalCost) :-
BootsCost = 16,
ShippingCost = 4,
TotalCost is BootsCost + ShippingCost.
% Define the total cost of buying the boots on eBay
total_cost_ebay(TotalCost) :-
BootsCost = 13,
ShippingCost = 2 * 4, % Shipping on eBay is twice the cost on Amazon
TotalCost is BootsCost + ShippingCost.
% Define the price difference between eBay and Amazon
price_difference(Difference) :-
total_cost_amazon(AmazonCost),
total_cost_ebay(EbayCost),
Difference is EbayCost - AmazonCost.
% Query to find out how much more expensive the boots are on eBay compared to Amazon
query(Difference) :-
price_difference(Difference).
% Uncomment the following line to run the query
% ?- query(Difference).
%query(Difference).