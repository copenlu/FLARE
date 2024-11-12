% Define the rule for calculating the total cost of the desk for Carmen
desk_cost(TotalCost) :-
OpeningBid = 200,  % Opening bid amount
BidIncrease = 50,  % Amount by which the bid increases each time
CarmenBids = 3,  % Number of times Carmen bids
calculate_total_cost(CarmenBids, OpeningBid, BidIncrease, TotalCost).
% Define a helper rule to calculate the total cost based on the number of Carmen's bids
calculate_total_cost(0, _, _, 0).
calculate_total_cost(N, CurrentBid, BidIncrease, TotalCost) :-
N > 0,
NextBid is CurrentBid + BidIncrease,
NewN is N - 1,
calculate_total_cost(NewN, NextBid, BidIncrease, RemainingCost),
TotalCost is CurrentBid + RemainingCost.
% Query predicate to run the program and get the result
query(TotalCost) :-
desk_cost(TotalCost).
% Uncomment the following line to run the query
% ?- query(TotalCost).
%query(TotalCost).