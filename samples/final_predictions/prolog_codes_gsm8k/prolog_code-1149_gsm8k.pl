% Define the distance Sofie walks every day
sofie_distance(Distance) :-
Distance is 10.
% Define the total distance Sofie walks in 7 days
sofie_total_distance(TotalDistance) :-
sofie_distance(DailyDistance),
TotalDistance is DailyDistance * 7.
% Define the distance Brian walks in 7 days (half of Sofie's total distance)
brian_distance(Distance) :-
sofie_total_distance(SofieTotalDistance),
Distance is SofieTotalDistance / 2.
% Query predicate to find the distance Brian walks in 7 days
query(BrianDistance) :-
brian_distance(BrianDistance).
% Uncomment the line below to run the query
% ?- query(BrianDistance).
%query(BrianDistance).