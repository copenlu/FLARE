% Define a predicate to calculate the total amount paid by Mark for the radiator and installation
total_cost(OriginalRadiatorCost, DiscountPercentage, MechanicHours, HourlyRate, TotalAmountPaid) :-
% Calculate the discounted price of the radiator
DiscountedPrice is OriginalRadiatorCost - (OriginalRadiatorCost * DiscountPercentage),
% Calculate the total cost of the mechanic's service
MechanicCost is MechanicHours * HourlyRate,
% Calculate the total amount paid by adding the discounted radiator price and mechanic's service cost
TotalAmountPaid is DiscountedPrice + MechanicCost.
% Define a query predicate to find out the total amount Mark paid
query(TotalAmountPaid) :-
% Original radiator cost $400, 80% discount, 3 hours of mechanic service at $50/hour
total_cost(400, 0.80, 3, 50, TotalAmountPaid).
% Uncomment the line below to run the query in SWI-Prolog
% query(TotalAmountPaid).
%query(TotalAmountPaid).