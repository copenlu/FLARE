% Define the number of window ledges and plants on each ledge
window_ledges(40).
plants_per_ledge(2).
% Calculate the total number of potted plants Mary currently has
total_current_plants(TotalPlants) :-
window_ledges(NumLedges),
plants_per_ledge(PlantsPerLedge),
TotalPlants is NumLedges * PlantsPerLedge.
% Define the number of potted plants Mary received as gifts
received_plants(18).
% Define the number of potted plants Mary plans to give away
plants_to_give_away(TotalToGiveAway) :-
window_ledges(NumLedges),
TotalToGiveAway is NumLedges.
% Calculate the number of potted plants Mary will remain with
plants_remaining(PlantsRemaining) :-
total_current_plants(TotalCurrent),
received_plants(Received),
plants_to_give_away(ToGiveAway),
PlantsRemaining is TotalCurrent + Received - ToGiveAway.
% Query to calculate the number of potted plants Mary will remain with
query(PlantsRemaining) :-
plants_remaining(PlantsRemaining).
% Uncomment the following line to run the query and calculate the remaining potted plants
% ?- query(PlantsRemaining).
%query(PlantsRemaining).