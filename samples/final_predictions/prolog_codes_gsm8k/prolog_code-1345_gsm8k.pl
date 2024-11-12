% Define a predicate to calculate the weekly revenue for Tom's restaurant
weekly_revenue(ReservationsPerNight, CostPerMeal, CostOfWine, NightsOpen, TotalRevenue) :-
% Calculate the revenue generated from each reservation
RevenuePerReservation is (2 * CostPerMeal) + CostOfWine,
% Calculate the total revenue for one night
NightlyRevenue is ReservationsPerNight * RevenuePerReservation,
% Calculate the total revenue for the week
TotalRevenue is NightlyRevenue * NightsOpen.
% Define a query predicate to find out the weekly revenue for Tom's restaurant
query(TotalRevenue) :-
% Given values: 6 reservations per night, $5 cost per meal, $5 cost of wine, open 2 days a week
weekly_revenue(6, 5, 5, 2, TotalRevenue).
% Uncomment the line below to run the query in SWI-Prolog
% query(TotalRevenue).
%query(TotalRevenue).