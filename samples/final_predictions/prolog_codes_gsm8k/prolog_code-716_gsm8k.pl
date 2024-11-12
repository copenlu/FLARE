% Define the total paycheck amount
total_paycheck(2400).
% Calculate the amount Greta puts into her retirement account (50% of total paycheck)
retirement_percentage(0.50).  % Assumed retirement contribution percentage
% Calculate the amount Greta uses for her monthly car payment (20% of total paycheck)
car_payment_percentage(0.20).  % Assumed car payment percentage
% Calculate the money Greta has left after funding retirement and paying for her car
money_left(TotalPaycheck, RetirementPercentage, CarPaymentPercentage, RetirementContribution, CarPayment, MoneyLeft) :-
RetirementContribution is TotalPaycheck * RetirementPercentage,
CarPayment is TotalPaycheck * CarPaymentPercentage,
MoneyLeft is TotalPaycheck - RetirementContribution - CarPayment.
% Query predicate to find out how much money Greta has left to spend
query(MoneyLeft) :-
total_paycheck(TotalPaycheck),
retirement_percentage(RetirementPercentage),
car_payment_percentage(CarPaymentPercentage),
money_left(TotalPaycheck, RetirementPercentage, CarPaymentPercentage, _, _, MoneyLeft).
% Uncomment the line below to run the query
% query(MoneyLeft).
%query(MoneyLeft).