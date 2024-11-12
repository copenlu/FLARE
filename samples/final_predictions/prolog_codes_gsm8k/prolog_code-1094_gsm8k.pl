% Define the rule to calculate the total postage cost
total_postage_cost(TotalCost) :-
SmallCoupons = 700,             % Assumed atom: Number of small coupons
BigCoupons is SmallCoupons * 2, % Calculate the total number of big coupons
CostPerSmallCoupon = 5,         % Assumed atom: Cost per small coupon in cents
CostPerBigCoupon = 15,          % Assumed atom: Cost per big coupon in cents
TotalCost is (SmallCoupons * CostPerSmallCoupon) + (BigCoupons * CostPerBigCoupon). % Calculate the total postage cost
% Query to find the total postage cost
query_total_postage_cost(TotalCost) :-
total_postage_cost(TotalCost).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_postage_cost(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).