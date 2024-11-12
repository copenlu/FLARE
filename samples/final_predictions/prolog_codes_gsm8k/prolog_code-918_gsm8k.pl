% Define the total_earnings predicate to calculate the total earnings from renting out the car
total_earnings(TotalEarnings) :-
TotalEarnings is 10 * 3 * 25.  % 10 rentals, 3 hours each, $25 per hour
% Define the total_expenses predicate to calculate the total expenses (car payment)
total_expenses(TotalExpenses) :-
TotalExpenses is 500.  % Car payment is $500
% Define the calculate_profit predicate to calculate the profit
calculate_profit(Profit) :-
total_earnings(TotalEarnings),  % Calculate total earnings
total_expenses(TotalExpenses),  % Calculate total expenses
Profit is TotalEarnings - TotalExpenses.  % Calculate profit as earnings minus expenses
% Query predicate to run the program and get the result
query(Profit) :-
calculate_profit(Profit).
% Uncomment the following line to run the query
% ?- query(Profit).
%query(Profit).