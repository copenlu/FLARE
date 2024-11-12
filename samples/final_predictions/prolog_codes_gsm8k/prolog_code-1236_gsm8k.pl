% Define a predicate to calculate the money left after paying off debts
money_left_after_debts(HomeValue, LoanPercentage, DebtPercentage, MoneyLeft) :-
% Calculate the loan amount obtained by mortgaging the home
LoanAmount is HomeValue * LoanPercentage,
% Calculate the amount used to pay off debts
AmountUsedToPayDebts is LoanAmount * DebtPercentage,
% Calculate the money left after paying off debts
MoneyLeft is LoanAmount - AmountUsedToPayDebts.
% Define a query predicate to find out the money John has left after paying off debts
query(MoneyLeft) :-
% Home value of $250,000, loan worth 40%, using 60% to pay off debts
money_left_after_debts(250000, 0.40, 0.60, MoneyLeft).
% Uncomment the line below to run the query in SWI-Prolog
% query(MoneyLeft).
%query(MoneyLeft).