% Define the amount of stuffing needed for each type of bed
stuffing(rottweiler, 8).
stuffing(chihuahua, 2).
stuffing(collie, Avg) :- Avg is (8 + 2) / 2.
% Define the total_stuffing predicate to calculate the total amount of stuffing needed
total_stuffing(ChihuahuaBeds, CollieBeds, TotalStuffing) :-
stuffing(chihuahua, ChihuahuaStuffing),
stuffing(collie, CollieStuffing),
TotalStuffing is (ChihuahuaBeds * ChihuahuaStuffing) + (CollieBeds * CollieStuffing).
% Query predicate to run the program and get the result
query(TotalStuffing) :-
total_stuffing(4, 3, TotalStuffing).
% Uncomment the following line to run the query
% ?- query(TotalStuffing).
%query(TotalStuffing).