% Define hourly wage rates
wage_rate(wages, 10).
wage_rate(tips, 15).
% Calculate total earnings per hour
total_earnings_per_hour(Total) :-
wage_rate(wages, Wage),
wage_rate(tips, Tips),
Total is Wage + Tips.
% Calculate total earnings per week
total_earnings_per_week(Total) :-
total_earnings_per_hour(EarningsPerHour),
Total is EarningsPerHour * 40.
% Calculate down payment amount
down_payment_amount(Cost, Percentage, Amount) :-
Amount is Cost * Percentage / 100.
% Calculate number of weeks needed to save down payment
weeks_to_save(CarCost, Percentage, Weeks) :-
down_payment_amount(CarCost, Percentage, DownPayment),
total_earnings_per_week(EarningsPerWeek),
Weeks is DownPayment / EarningsPerWeek.
% Query predicate to find the number of weeks needed to save the down payment
query(Weeks) :-
CarCost = 10000,  % Assumed car cost
Percentage = 20,  % Assumed percentage to save
weeks_to_save(CarCost, Percentage, Weeks).
% Uncomment the line below to run the query
% query(Weeks).
%query(Weeks).