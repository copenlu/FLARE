% Define the points collected by Adam
points_collected(adam, 50).
% Calculate points collected by Betty, Martha, and Tom based on the given relationships
points_collected(betty, Points) :-
points_collected(adam, AdamPoints),
Points is AdamPoints + (0.3 * AdamPoints).
points_collected(martha, Points) :-
points_collected(betty, BettyPoints),
Points is 3 * (BettyPoints - 30).
points_collected(tom, Points) :-
points_collected(betty, BettyPoints),
Points is BettyPoints - 30.
% Calculate the total points collected by the class
total_points_collected(Total) :-
points_collected(adam, AdamPoints),
points_collected(betty, BettyPoints),
points_collected(martha, MarthaPoints),
points_collected(tom, TomPoints),
Total is AdamPoints + BettyPoints + MarthaPoints + TomPoints.
% Calculate the points needed to reach the 400-point threshold for the trip
points_needed_for_trip(NeededPoints) :-
total_points_collected(TotalPoints),
NeededPoints is max(0, 400 - TotalPoints).
% Query to calculate the points needed for the trip
query(NeededPoints) :-
points_needed_for_trip(NeededPoints).
% Uncomment the following line to run the query and calculate the points needed for the trip
% ?- query(NeededPoints).
%query(NeededPoints).