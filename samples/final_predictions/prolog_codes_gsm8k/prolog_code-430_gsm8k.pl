% Predicate to calculate the number of feet Oliver must climb to reach the elevation of Stanley's comb
feet_to_climb(StanleyElevation, CombElevation, OliverElevation, FeetToClimb) :-
FeetToClimb is StanleyElevation - CombElevation - OliverElevation.
% Main predicate to calculate the feet Oliver must climb
oliver_climb(FeetToClimb) :-
feet_to_climb(10000, 4000, 3000, FeetToClimb).
% Query predicate to find out how many feet Oliver must climb
query(FeetToClimb) :-
oliver_climb(FeetToClimb).
% Uncomment the following line to run the query
% ?- query(FeetToClimb).
%query(FeetToClimb).