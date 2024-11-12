% Predicate to calculate the total amount spent on athletic gear
% Params: TankTopCost, RunningShortsCost, TennisShoesCost, AthleticSocksCost, TotalAmountSpent
total_amount_spent(TankTopCost, RunningShortsCost, TennisShoesCost, AthleticSocksCost, TotalAmountSpent) :-
TotalAmountSpent is TankTopCost + RunningShortsCost + TennisShoesCost + AthleticSocksCost.
% Main predicate to compute the total amount spent by Alison on athletic gear
% Params: TotalAmountSpent
calculate_total_amount_spent(TotalAmountSpent) :-
% Constants
TankTopCost = 10,
RunningShortsCost is TankTopCost + 5,  % Running shorts cost $5 more than the tank top
TennisShoesOriginalPrice = 48,
TennisShoesCost is TennisShoesOriginalPrice / 2,  % Tennis shoes on sale for half price
AthleticSocksOriginalPrice = 8,
AthleticSocksCost is AthleticSocksOriginalPrice - 2,  % $2 coupon applied
% Calculate the total amount spent
total_amount_spent(TankTopCost, RunningShortsCost, TennisShoesCost, AthleticSocksCost, TotalAmountSpent).
% Query predicate to get the total amount spent on athletic gear
query(TotalAmountSpent) :-
calculate_total_amount_spent(TotalAmountSpent).
% Uncomment the following line to run the query
% query(TotalAmountSpent).
%query(TotalAmountSpent).