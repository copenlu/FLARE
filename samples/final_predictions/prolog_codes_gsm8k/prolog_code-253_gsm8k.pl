% Predicate to calculate the total cost of makeup services
% Params: HourlyRate, HoursPerDay, DaysPerWeek, Weeks, TotalCostBeforeDiscount
total_cost_makeup_services(HourlyRate, HoursPerDay, DaysPerWeek, Weeks, TotalCostBeforeDiscount) :-
TotalHours is HoursPerDay * DaysPerWeek * Weeks,
TotalCostBeforeDiscount is TotalHours * HourlyRate.
% Predicate to apply a discount to the total cost
% Params: TotalCostBeforeDiscount, DiscountPercentage, FinalAmountPaid
apply_discount(TotalCostBeforeDiscount, DiscountPercentage, FinalAmountPaid) :-
DiscountAmount is TotalCostBeforeDiscount * DiscountPercentage / 100,
FinalAmountPaid is TotalCostBeforeDiscount - DiscountAmount.
% Main predicate to compute the total amount Jean paid for makeup services
% Params: FinalAmountPaid
calculate_total_amount_paid(FinalAmountPaid) :-
HourlyRate = 250,  % $250 per hour
HoursPerDay = 6,
DaysPerWeek = 4,
Weeks = 5,
DiscountPercentage = 10,  % 10% discount
% Calculate total cost before discount
total_cost_makeup_services(HourlyRate, HoursPerDay, DaysPerWeek, Weeks, TotalCostBeforeDiscount),
% Apply the discount
apply_discount(TotalCostBeforeDiscount, DiscountPercentage, FinalAmountPaid).
% Query predicate to get the final amount Jean paid
query(FinalAmountPaid) :-
calculate_total_amount_paid(FinalAmountPaid).
% Uncomment the following line to run the query
% query(FinalAmountPaid).
%query(FinalAmountPaid).