% Define a predicate to calculate the total amount of medicine in multiple doses
total_medicine(FirstMedicine, Multiplier, Doses, TotalAmount) :-
% Calculate the amount of the second medicine
SecondMedicine is FirstMedicine * Multiplier,
% Calculate the total amount of medicine in one dose
TotalInOneDose is FirstMedicine + SecondMedicine,
% Calculate the total amount of medicine in the specified number of doses
TotalAmount is TotalInOneDose * Doses.
% Define a query predicate to find out the total amount of medicine in 8 doses
query(TotalAmount) :-
% Given 14 mL of first medicine, 3 times that amount for the second medicine, and 8 doses
total_medicine(14, 3, 8, TotalAmount).
% Uncomment the line below to run the query in SWI-Prolog
% query(TotalAmount).
%query(TotalAmount).