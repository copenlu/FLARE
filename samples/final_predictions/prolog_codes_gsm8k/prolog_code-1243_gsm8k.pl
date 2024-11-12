% Define a predicate to calculate the total amount Stephen will pay in the twelfth month
twelfth_month_payment(InitialLoanAmount, InterestRate, MonthlyPayment, MonthsPaid, TwelfthMonthPayment) :-
% Calculate the total amount owed after adding interest to the initial loan amount
TotalAmountOwed is InitialLoanAmount * (1 + InterestRate),
% Calculate the total amount Stephen will pay over 11 months
TotalPaidAmount is MonthlyPayment * MonthsPaid,
% Calculate the remaining balance after 11 months
RemainingBalance is TotalAmountOwed - TotalPaidAmount,
% Calculate the interest on the remaining balance for one month
InterestOnBalance is RemainingBalance * InterestRate,
% Calculate the total amount Stephen will pay in the twelfth month
TwelfthMonthPayment is RemainingBalance + InterestOnBalance.
% Define a query predicate to find out the total amount Stephen will pay in the twelfth month
query(TwelfthMonthPayment) :-
% Initial loan amount of $300, 2% interest rate, $25 monthly payment for 11 months
twelfth_month_payment(300, 0.02, 25, 11, TwelfthMonthPayment).
% Uncomment the line below to run the query in SWI-Prolog
% query(TwelfthMonthPayment).
%query(TwelfthMonthPayment).