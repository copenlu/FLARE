% Define the predicate to calculate daily savings per tomato
daily_savings_per_tomato(OldPrice, NewPrice, SavingsPerTomato) :-
SavingsPerTomato is OldPrice - NewPrice.
% Define the predicate to calculate daily savings amount
daily_savings_amount(SavingsPerTomato, TomatoesSoldPerDay, DailySavings) :-
DailySavings is SavingsPerTomato * TomatoesSoldPerDay.
% Define the predicate to calculate weekly savings
weekly_savings(DailySavings, WeeklySavings) :-
WeeklySavings is DailySavings * 7.
% Calculate the daily savings per tomato assuming the old price is $0.5 and the new price is $0.4
% Assumed atom/predicate: daily_savings_per_tomato(0.5, 0.4, SavingsPerTomato).
% Calculate the daily savings amount for 500 tomatoes sold per day
% Assumed atom/predicate: daily_savings_amount(SavingsPerTomato, 500, DailySavings).
% Calculate the weekly savings based on the daily savings amount
% Assumed atom/predicate: weekly_savings(DailySavings, WeeklySavings).
% Query predicate to find the weekly savings
query(WeeklySavings) :-
daily_savings_per_tomato(0.5, 0.4, SavingsPerTomato),
daily_savings_amount(SavingsPerTomato, 500, DailySavings),
weekly_savings(DailySavings, WeeklySavings).
% Uncomment the line below to run the query
% query(WeeklySavings).
%query(WeeklySavings).