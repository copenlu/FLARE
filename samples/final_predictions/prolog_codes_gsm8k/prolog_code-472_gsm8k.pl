% Define the value of aluminum cans and plastic bottles
value(aluminum_can, 2).
value(plastic_bottle, 3).
% Calculate total earnings from recycling cans
earnings_from_cans(NumCans, TotalEarnings) :-
value(aluminum_can, CanValue),
TotalEarnings is NumCans * CanValue.
% Calculate total earnings from recycling bottles
earnings_from_bottles(NumBottles, TotalEarnings) :-
value(plastic_bottle, BottleValue),
TotalEarnings is NumBottles * BottleValue.
% Calculate total earnings in a month
total_earnings_in_month(WeeklyCans, WeeklyBottles, TotalEarnings) :-
earnings_from_cans(WeeklyCans, CansEarnings),
earnings_from_bottles(WeeklyBottles, BottlesEarnings),
TotalEarnings is (CansEarnings + BottlesEarnings) * 4.
% Query to calculate Grayson's total earnings in a four-week month
query(TotalEarnings) :-
total_earnings_in_month(3, 5, TotalEarnings).
% Uncomment the following line to run the query and calculate Grayson's total earnings
% ?- query(TotalEarnings).
%query(TotalEarnings).