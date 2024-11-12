cost(apple_pie, 15).
Earnings is Boxes * Cost.
% Define the rule to calculate earnings from sales of apple pie
earnings(apple_pie, Boxes, Earnings) :-
cost(apple_pie, Cost),
Earnings is Boxes * Cost.
% Define the rule to calculate total earnings for a day
earnings(apple_pie, ApplePieBoxes, ApplePieEarnings),
% Define the rule to calculate total earnings for two days
Total is SaturdayTotal + SundayTotal.
% Predicate to encapsulate the entire calculation and output Sunny's total earnings for two days
calculate_total_earnings(TotalEarnings) :-
total_earnings_two_days(10, 15, 15, 15, TotalEarnings).  % Given values for boxes sold
% Query to find Sunny's total earnings for two days
query(TotalEarnings) :-
calculate_total_earnings(TotalEarnings).
% Uncomment the following line to run the query
% ?- query(TotalEarnings).
%query(TotalEarnings).