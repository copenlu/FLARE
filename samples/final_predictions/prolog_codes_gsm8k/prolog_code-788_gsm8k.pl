% Define the base hourly rate and additional amount
hourly_rate(15).
additional_amount(5).
% Define the predicate to calculate earnings for a day
earnings_per_day(Day, Classes, Hours, Earnings) :-
hourly_rate(Rate),
additional_amount(Additional),
Earnings is Rate * Hours + (Classes > 3) * Additional.
% Calculate earnings for Monday
earnings_per_day(monday, 4, 5, MondayEarnings).
% Calculate earnings for Wednesday
earnings_per_day(wednesday, 2, 2, WednesdayEarnings).
% Define the total earnings predicate
total_earnings(Total) :-
earnings_per_day(monday, 4, 5, MondayEarnings),
earnings_per_day(wednesday, 2, 2, WednesdayEarnings),
Total is MondayEarnings + WednesdayEarnings.
% Query predicate to find the total earnings for Monday and Wednesday
query(Total) :-
total_earnings(Total).
% Uncomment the line below to run the query
% query(Total).
%query(Total).