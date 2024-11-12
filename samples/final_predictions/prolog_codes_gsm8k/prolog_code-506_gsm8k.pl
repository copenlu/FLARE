% Define constants
pack_price(4.00).
razors_per_pack(4).
coupon_amount(2.00).
% Calculate the cost per individual razor after discount
cost_per_razor(CostPerRazor) :-
pack_price(PackPrice),
razors_per_pack(RazorsPerPack),
coupon_amount(CouponAmount),
TotalCost is PackPrice - CouponAmount,
CostPerRazor is TotalCost / RazorsPerPack.
% Query predicate to run the program and get the result
query(CostPerRazor) :-
cost_per_razor(CostPerRazor).
% Uncomment the following line to run the query
% ?- query(CostPerRazor).
%query(CostPerRazor).