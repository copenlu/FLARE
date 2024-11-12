% Define the rule to calculate the total revenue
total_revenue(MarigoldPots, PetuniaPots, BegoniaPots, TotalRevenue) :-
MarigoldPrice is round(2.74),   % Assumed atom/predicate: Price of marigolds rounded to the nearest dollar
PetuniaPrice is round(1.87),    % Assumed atom/predicate: Price of petunias rounded to the nearest dollar
BegoniaPrice is round(2.12),    % Assumed atom/predicate: Price of begonias rounded to the nearest dollar
RevenueMarigolds is MarigoldPots * MarigoldPrice,
RevenuePetunias is PetuniaPots * PetuniaPrice,
RevenueBegonias is BegoniaPots * BegoniaPrice,
TotalRevenue is RevenueMarigolds + RevenuePetunias + RevenueBegonias.
% Query to find the total revenue when selling 12 pots of marigolds, 9 pots of petunias, and 17 pots of begonias
query_total_revenue(TotalRevenue) :-
total_revenue(12, 9, 17, TotalRevenue).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_revenue(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).