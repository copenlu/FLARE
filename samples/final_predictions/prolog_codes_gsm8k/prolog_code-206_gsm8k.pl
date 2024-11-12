% Define a predicate to calculate John's total earnings for the year
total_earnings(WeeklySalary, WeeksInYear, AwardAmount, RaisePercentage, TotalEarnings) :-
% Calculate the base earnings without any additional rewards or raises
BaseEarnings is WeeklySalary * WeeksInYear,
% Calculate the additional earnings from the one-time award
AwardEarnings is AwardAmount,
% Calculate the additional earnings from the raise in salary
RaiseEarnings is BaseEarnings * RaisePercentage / 100,
% Calculate the total earnings for the year
TotalEarnings is BaseEarnings + AwardEarnings + RaiseEarnings.
% Define a query predicate to find out John's total earnings for the year
query(TotalEarnings) :-
% Given values: weekly salary of $2000, 52 weeks in a year, $5000 award, 5% raise
total_earnings(2000, 52, 5000, 5, TotalEarnings).
% Uncomment the line below to run the query in SWI-Prolog
% query(TotalEarnings).
%query(TotalEarnings).