% Define the size of Timothy's locker
locker_size(timothy, 24).
% Define the size of Zack's locker as half the size of Timothy's locker
locker_size(zack, 12).
% Define the size of Peter's locker as 1/4 the size of Zack's locker
locker_size(peter, Size) :-
locker_size(zack, ZackSize),
Size is ZackSize / 4.
% Query predicate to find out the size of Peter's locker
query(PeterSize) :-
locker_size(peter, PeterSize).
% Uncomment the following line to run the query
% ?- query(PeterSize).
%query(PeterSize).