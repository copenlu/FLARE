% Define total cost before tax
total_cost_before_tax(NumCars, PricePerCar, TotalCost) :-
TotalCost is NumCars * PricePerCar.
% Define total tax amount
total_tax(TotalCostBeforeTax, TaxRate, TotalTax) :-
TotalTax is TotalCostBeforeTax * TaxRate.
% Define total registration fee
total_registration_fee(NumCars, RegistrationFeePerCar, TotalRegistrationFee) :-
TotalRegistrationFee is NumCars * RegistrationFeePerCar.
% Define total amount paid
total_amount_paid(TotalCostBeforeTax, TotalTax, TotalRegistrationFee, TotalAmountPaid) :-
TotalAmountPaid is TotalCostBeforeTax + TotalTax + TotalRegistrationFee.
% Query predicate to run the program and get the result
query(TotalAmountPaid) :-
total_cost_before_tax(12, 20000, TotalCostBeforeTax),  % 12 cars at $20,000 each
total_tax(TotalCostBeforeTax, 0.1, TotalTax),  % 10% tax rate
total_registration_fee(12, 1000, TotalRegistrationFee),  % $1000 registration fee per car
total_amount_paid(TotalCostBeforeTax, TotalTax, TotalRegistrationFee, TotalAmountPaid).
% Uncomment the following line to run the query
% ?- query(TotalAmountPaid).
%query(TotalAmountPaid).