% Define the number of fireworks in the city
fireworks_in_city(15 * 20).  % Assumed number of boxes * fireworks per box
% Calculate the number of visible fireworks to Hannah based on the percentage
visible_fireworks(TotalFireworks, VisibleFireworks) :-
VisibleFireworks is TotalFireworks * 0.4.  % 40% of total fireworks
% Define the number of fireworks in Hannah's backyard
fireworks_in_backyard(3 * 5).  % Assumed number of boxes * fireworks per box
% Calculate the total number of fireworks seen by Hannah
total_fireworks_seen(FireworksInCity, FireworksInBackyard, TotalFireworksSeen) :-
visible_fireworks(FireworksInCity, VisibleFireworks),
TotalFireworksSeen is VisibleFireworks + FireworksInBackyard.
% Query predicate to find the total number of fireworks seen by Hannah
query(TotalFireworksSeen) :-
fireworks_in_city(FireworksInCity),
fireworks_in_backyard(FireworksInBackyard),
total_fireworks_seen(FireworksInCity, FireworksInBackyard, TotalFireworksSeen).
% Uncomment the line below to run the query
% query(TotalFireworksSeen).
%query(TotalFireworksSeen).