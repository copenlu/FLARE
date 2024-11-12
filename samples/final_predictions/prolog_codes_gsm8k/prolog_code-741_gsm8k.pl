% Define the total number of normal chairs and baby chairs in the restaurant
total_chairs(170, 23).
% Calculate the number of chairs sent for repair
chairs_sent_for_repair(20, 13).
% Calculate the number of chairs left after repairs
remaining_chairs(NormalChairs, BabyChairs, RemainingNormalChairs, RemainingBabyChairs) :-
total_chairs(TotalNormalChairs, TotalBabyChairs),
chairs_sent_for_repair(ChairsSentNormal, ChairsSentBaby),
RemainingNormalChairs is TotalNormalChairs - ChairsSentNormal,
RemainingBabyChairs is TotalBabyChairs - ChairsSentBaby.
% Calculate the total number of chairs left in the restaurant
total_chairs_left(TotalChairsLeft) :-
remaining_chairs(_, _, RemainingNormalChairs, RemainingBabyChairs),
TotalChairsLeft is RemainingNormalChairs + RemainingBabyChairs.
% Query predicate to find the total number of chairs left in the restaurant
query(TotalChairsLeft) :-
total_chairs_left(TotalChairsLeft).
% Uncomment the line below to run the query
% query(TotalChairsLeft).
%query(TotalChairsLeft).