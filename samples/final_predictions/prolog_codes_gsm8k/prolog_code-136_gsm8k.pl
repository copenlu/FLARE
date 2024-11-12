% Define the cost per ride for the roller coaster and luge
roller_coaster_cost(6).
luge_cost(6).
% Calculate the total number of tickets used by Pam and Fred
total_tickets_pam_fred(TotalTickets) :-
roller_coaster_cost(RollerCoasterCost),
luge_cost(LugeCost),
PamRides = 2,
FredRides = 4,
PamTickets is PamRides * RollerCoasterCost + 2 * LugeCost,
FredTickets is FredRides * RollerCoasterCost + 2 * LugeCost,
TotalTickets is PamTickets + FredTickets.
% Query to find the total number of tickets used by Pam and Fred
query(TotalTickets) :-
total_tickets_pam_fred(TotalTickets).
% Uncomment the following line to run the query and find out the total number of tickets used by Pam and Fred
% ?- query(TotalTickets).
%query(TotalTickets).