% Define the rule to calculate the monthly payment amount
calculate_monthly_payment(TotalPhones, PhoneCost, InterestRate, Months, MonthlyPayment) :-
TotalCost is TotalPhones * PhoneCost,  % Calculate the total cost of purchasing the phones
TotalCostWithInterest is TotalCost + (TotalCost * InterestRate / 100),  % Calculate the total cost including interest
MonthlyPayment is TotalCostWithInterest / Months.  % Calculate the monthly payment amount
% Query to find the monthly payment amount for Shiela's installment plan
query_monthly_payment(MonthlyPayment) :-
calculate_monthly_payment(5, 150, 2, 3, MonthlyPayment).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_monthly_payment(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).