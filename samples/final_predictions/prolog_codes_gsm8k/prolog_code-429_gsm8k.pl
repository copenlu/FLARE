% Define the relationship between Peter's, Zack's, and Timothy's locker sizes
locker_size(PeterSize, ZackSize, TimothySize) :-
PeterSize is 5, % Assumed atom: Peter's locker size is 5 cubic inches
zack_size(PeterSize, ZackSize),
timothy_size(ZackSize, TimothySize).
% Calculate Zack's locker size based on Peter's locker size
zack_size(PeterSize, ZackSize) :-
ZackSize is PeterSize * 4.
% Calculate Timothy's locker size based on Zack's locker size
timothy_size(ZackSize, TimothySize) :-
TimothySize is ZackSize * 2.
% Query to find Timothy's locker size
query(TimothySize) :-
locker_size(_, _, TimothySize).
% Uncomment the following line to run the query
% ?- query(TimothySize).
%query(TimothySize).