% Define the rule to calculate the total mileage for each day
walked_distance(TuesdayDistance, MondayDistance, WednesdayDistance) :-
MondayDistance is 4,  % Assumed atom/predicate
TuesdayDistance is 6 * MondayDistance,
WednesdayDistance is 41 - (MondayDistance + TuesdayDistance).
% Query to find the distance Walt walked on Wednesday
query(WednesdayDistance) :-
walked_distance(TuesdayDistance, MondayDistance, WednesdayDistance).
% Uncomment the following line to run the query and find out the distance Walt walked on Wednesday.
% ?- query(WednesdayDistance).
%query(WednesdayDistance).