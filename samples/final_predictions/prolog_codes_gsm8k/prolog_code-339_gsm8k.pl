% Calculate the rewards earned based on the amount spent
calculate_rewards_spent(Spent, RewardsEarned) :-
RewardsEarned is Spent // 20.  % For every $20 spent, the customer earns $1 in rewards
% Calculate the total amount paid by the customer on this shopping trip
total_amount_paid(Spent, RewardsUsed, CouponDeduction, AmountPaid) :-
AmountPaid is Spent - RewardsUsed - CouponDeduction.
% Given values from the problem
SpentLastTrip = 80,  % Amount spent on the last shopping trip
SpentThisTrip = 43,  % Amount spent on this shopping trip
CouponMultiplier = 2,  % Coupon deduction is twice the rewards used
% Calculate rewards earned from the last trip
calculate_rewards_spent(SpentLastTrip, RewardsEarnedLastTrip),
% Calculate total rewards used and coupon deduction
RewardsUsed = 4,  % Rewards earned from the last trip
CouponDeduction = RewardsUsed * CouponMultiplier,
% Calculate the total amount paid on this shopping trip
total_amount_paid(SpentThisTrip, RewardsUsed, CouponDeduction, AmountPaid).
% Query predicate to run the program and get the result
query(AmountPaid) :-
total_amount_paid(SpentThisTrip, RewardsUsed, CouponDeduction, AmountPaid).
% Uncomment the following line to run the query
% ?- query(AmountPaid).
%query(AmountPaid).