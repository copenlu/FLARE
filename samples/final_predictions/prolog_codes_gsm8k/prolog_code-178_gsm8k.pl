% Define rules to calculate the increased payment for each debt type
increased_payment(StudentLoanMin, IncreasedStudentLoan) :-
IncreasedStudentLoan is StudentLoanMin + (0.5 * StudentLoanMin).
increased_payment(CreditCardMin, IncreasedCreditCard) :-
IncreasedCreditCard is CreditCardMin + (0.5 * CreditCardMin).
increased_payment(MortgageMin, IncreasedMortgage) :-
IncreasedMortgage is MortgageMin + (0.5 * MortgageMin).
% Define a rule to calculate the total monthly payment
total_monthly_payment(StudentLoanMin, CreditCardMin, MortgageMin, TotalMonthlyPayment) :-
increased_payment(StudentLoanMin, IncreasedStudentLoan),
increased_payment(CreditCardMin, IncreasedCreditCard),
increased_payment(MortgageMin, IncreasedMortgage),
TotalMonthlyPayment is IncreasedStudentLoan + IncreasedCreditCard + IncreasedMortgage.
% Define a rule to calculate the total annual payment
total_annual_payment(StudentLoanMin, CreditCardMin, MortgageMin, TotalAnnualPayment) :-
total_monthly_payment(StudentLoanMin, CreditCardMin, MortgageMin, TotalMonthlyPayment),
TotalAnnualPayment is TotalMonthlyPayment * 12.
% Query predicate to find Jessica's total annual payment
query(TotalAnnualPayment) :-
% Assumed minimum payments: student loan $300, credit card $200, mortgage $500
total_annual_payment(300, 200, 500, TotalAnnualPayment).
% Uncomment the line below to run the query in SWI-Prolog
% query(TotalAnnualPayment).
%query(TotalAnnualPayment).