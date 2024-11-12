% Predicate to calculate the total amount Jim needs to earn
% Params: YearsInCollege, LoanAmountPerYear, PreviousIncomePerYear, TotalAmountNeeded
total_amount_needed(YearsInCollege, LoanAmountPerYear, PreviousIncomePerYear, TotalAmountNeeded) :-
TotalAmountNeeded is (YearsInCollege * LoanAmountPerYear) + (YearsInCollege * PreviousIncomePerYear).
% Predicate to calculate Jim's new income after college
% Params: PreviousIncomePerYear, NewIncomePerYear
new_income_after_college(PreviousIncomePerYear, NewIncomePerYear) :-
NewIncomePerYear is PreviousIncomePerYear * 3.  % Triple the previous income
% Predicate to calculate the time it would take for Jim to earn the total amount
% Params: TotalAmountNeeded, NewIncomePerYear, TimeToEarnTotalAmount
time_to_earn_total_amount(TotalAmountNeeded, NewIncomePerYear, TimeToEarnTotalAmount) :-
TimeToEarnTotalAmount is TotalAmountNeeded / NewIncomePerYear.
% Main predicate to compute the time it would take for Jim to earn the total amount
% Params: TimeToEarnTotalAmount
calculate_time_to_earn(TimeToEarnTotalAmount) :-
% Constants
YearsInCollege = 4,
LoanAmountPerYear = 50000,
PreviousIncomePerYear = 25000,
% Calculate total amount needed
total_amount_needed(YearsInCollege, LoanAmountPerYear, PreviousIncomePerYear, TotalAmountNeeded),
% Calculate new income after college
new_income_after_college(PreviousIncomePerYear, NewIncomePerYear),
% Calculate time to earn the total amount
time_to_earn_total_amount(TotalAmountNeeded, NewIncomePerYear, TimeToEarnTotalAmount).
% Query predicate to get the time it would take for Jim to earn the total amount
query(TimeToEarnTotalAmount) :-
calculate_time_to_earn(TimeToEarnTotalAmount).
% Uncomment the following line to run the query
% query(TimeToEarnTotalAmount).
%query(TimeToEarnTotalAmount).