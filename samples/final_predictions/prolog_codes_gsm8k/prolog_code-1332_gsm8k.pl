% Define the rule for calculating total earnings in 2 weeks
total_earnings(PaymentPerCar, CarsServicedPerDay, TotalEarnings) :-
DaysWorkedPerWeek is 5, % Josh works 5 days a week
DailyEarnings is CarsServicedPerDay * PaymentPerCar,
WeeklyEarnings is DailyEarnings * DaysWorkedPerWeek,
TotalEarnings is WeeklyEarnings * 2. % Total earnings in 2 weeks
% Define a predicate to execute the specific query with given values
query(TotalEarnings) :-
total_earnings(4, 3, TotalEarnings). % Payment per car is $4, 3 cars serviced per day
% Uncomment the line below to run the query
% ?- query(TotalEarnings).
%query(TotalEarnings).