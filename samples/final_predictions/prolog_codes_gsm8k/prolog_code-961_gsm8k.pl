% Define the rule to calculate the number of $25 pens John can buy
calculate_pens(Pens) :-
HourlyRate = 50,            % Assumed hourly rate in dollars
HoursWorked = 6,            % Assumed number of hours worked
GasCost = 50,               % Assumed cost of gas in dollars
BankDeposit = 100,          % Assumed amount John wants to deposit in the bank
PencilCost = 10,            % Assumed cost of each pencil in dollars
PenCost = 25,               % Assumed cost of each pen in dollars
TotalEarnings is HourlyRate * HoursWorked,
RemainingMoney is TotalEarnings - GasCost,
RemainingMoneyAfterDeposit is RemainingMoney - BankDeposit,
RemainingMoneyAfterPencils is RemainingMoneyAfterDeposit - (5 * PencilCost),
Pens is RemainingMoneyAfterPencils // PenCost.
% Query to find the number of $25 pens John can buy
query(Pens) :-
calculate_pens(Pens).
% Uncomment the following line to run the query
% ?- query(Pens).
%query(Pens).