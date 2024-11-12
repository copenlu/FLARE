% Define the smallest_group_size predicate to calculate the number of students in the smallest group
smallest_group_size(X, Y) :-
Y is X - 10,  % The smallest group has 10 less students than each of the other two groups
X + X + Y =:= 200.  % Total number of students in the class is 200
% Query predicate to run the program and get the result
query(SmallestGroupSize) :-
smallest_group_size(X, Y),
Y = SmallestGroupSize.
% Uncomment the following line to run the query
% ?- query(SmallestGroupSize).
%query(SmallestGroupSize).