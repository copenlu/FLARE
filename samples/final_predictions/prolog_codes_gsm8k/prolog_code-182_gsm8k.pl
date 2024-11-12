% Define a predicate to calculate the final amount of money Zaid will have left
remaining_money(Salary, FinalAmountLeft) :-
% Calculate the amount spent on rent (1/4 of salary)
Rent is Salary * 1/4,
% Calculate the remaining amount after rent
RemainingAfterRent is Salary - Rent,
% Calculate the amount spent on car fuel (1/3 of remaining amount)
Fuel is RemainingAfterRent * 1/3,
% Calculate the remaining amount after fuel
RemainingAfterFuel is RemainingAfterRent - Fuel,
% Calculate the amount donated to charity (half of the remaining amount)
CharityDonation is RemainingAfterFuel / 2,
% Calculate the remaining amount after donation
RemainingAfterDonation is RemainingAfterFuel - CharityDonation,
% Amount given to daughter for weekly expenses
DaughterExpense is 200,
% Amount given to wife for groceries and household goods
WifeExpense is 700,
% Calculate the final amount left after all expenses and donations
FinalAmountLeft is RemainingAfterDonation - DaughterExpense - WifeExpense.
% Define a query predicate to find out the final amount of money Zaid will have left
query(FinalAmountLeft) :-
% Zaid's monthly salary is $6000
remaining_money(6000, FinalAmountLeft).
% Uncomment the line below to run the query in SWI-Prolog
% query(FinalAmountLeft).
%query(FinalAmountLeft).