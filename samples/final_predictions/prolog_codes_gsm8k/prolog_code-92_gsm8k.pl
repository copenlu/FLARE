% Define the cost of a gift bag
gift_bag_cost(2).
% Calculate the total amount spent on gift bags
calculate_gift_bag_cost(NumGuests, TotalCost) :-
TotalGiftBags is NumGuests * 0.75,
AdjustedGiftBags is TotalGiftBags * (3/4), % Accounting for 1/4 of attendees not showing up
gift_bag_cost(CostPerBag),
TotalCost is AdjustedGiftBags * CostPerBag.
% Query to calculate the total amount Christina will spend on gift bags
query(TotalCost) :-
calculate_gift_bag_cost(16, TotalCost).
% Uncomment the following line to run the query and calculate the total cost of gift bags
% ?- query(TotalCost).
%query(TotalCost).