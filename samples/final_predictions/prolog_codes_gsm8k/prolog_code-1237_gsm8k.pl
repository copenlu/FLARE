% Define a predicate to calculate the total earnings from selling the tunas
calculate_earnings(Tuna1Weight, Tuna2Weight, Tuna3Weight, PricePerKilogram, TotalEarnings) :-
% Calculate the total weight of the tunas
TotalWeight is Tuna1Weight + Tuna2Weight + Tuna3Weight,
% Calculate the total earnings by multiplying total weight with price per kilogram
TotalEarnings is TotalWeight * PricePerKilogram.
% Define a query predicate to find out the total earnings from selling the tunas
query(TotalEarnings) :-
% Tuna weights: 56kg, 46kg, 26kg; Price per kilogram: $0.50
calculate_earnings(56, 46, 26, 0.50, TotalEarnings).
% Uncomment the line below to run the query in SWI-Prolog
% query(TotalEarnings).
%query(TotalEarnings).