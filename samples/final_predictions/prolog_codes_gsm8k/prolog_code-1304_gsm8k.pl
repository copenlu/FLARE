% Define the rule for calculating the total cost of the hotel and bus travels
total_cost(HotelNightCost, NumNights, NumBusTrips, TotalCost) :-
TotalHotelCost is HotelNightCost * NumNights,
BusTripCost is 0.1 * HotelNightCost,
TotalBusCost is BusTripCost * NumBusTrips,
TotalCost is TotalHotelCost + TotalBusCost.
% Define a predicate to execute the specific query with given values
query(TotalCost) :-
% Hotel night cost of $80, 3 nights at the hotel, and 7 bus trips
total_cost(80, 3, 7, TotalCost).
% Uncomment the line below to run the query
% ?- query(TotalCost).
%query(TotalCost).