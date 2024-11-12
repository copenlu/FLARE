% Define the rule for calculating the final floor
final_floor(StartingFloor, FinalFloor) :-
TargetFloor is StartingFloor * 4 + 6,
FinalFloor = TargetFloor.
% Query predicate to get the final floor Bill is on
query(FinalFloor) :-
final_floor(3, FinalFloor).  % Starting floor is 3
% Uncomment the following line to run the query
% ?- query(FinalFloor).
%query(FinalFloor).