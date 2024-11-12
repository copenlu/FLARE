% Define the total number of trips made by the second plane
total_trips_second_plane(44).
% Calculate the total number of trips made by the first plane based on the information provided
total_trips_first_plane(TotalTripsFirstPlane) :-
total_trips_second_plane(TotalTripsSecondPlane),
TotalTripsFirstPlane is 2 * TotalTripsSecondPlane.
% Calculate the number of flights to France taken by the first plane in one day
flights_to_france(FlightsToFrance) :-
total_trips_first_plane(TotalTripsFirstPlane),
FlightsToFrance is TotalTripsFirstPlane // 8.
% Query predicate to find the number of flights to France taken by the first plane
query(FlightsToFrance) :-
flights_to_france(FlightsToFrance).
% Uncomment the line below to run the query
% query(FlightsToFrance).
%query(FlightsToFrance).