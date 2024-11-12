% Define constants
plane_ticket_cost(5000).
normal_hotel_price_per_day(1500).
hotel_stay_duration(3).
% Calculate total cost of the trip
calculate_total_cost(TotalCost) :-
plane_ticket_cost(PlaneTicketCost),
hotel_stay_duration(Days),
normal_hotel_price_per_day(NormalHotelPrice),
HotelPrice is 1.20 * NormalHotelPrice * Days,
TotalCost is 2 * PlaneTicketCost + HotelPrice.
% Query to calculate the total cost of the trip
query(TotalCost) :-
calculate_total_cost(TotalCost).
% Uncomment the following line to run the query and calculate the total cost of the trip
% ?- query(TotalCost).
%query(TotalCost).