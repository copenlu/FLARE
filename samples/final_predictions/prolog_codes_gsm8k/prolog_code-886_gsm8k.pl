% Define the predicate to calculate the total number of burritos distributed to students
total_distributed_students(TotalDistributed) :-
TotalDistributed is 50 * 10.  % 50 students each receive 10 burritos
% Define the predicate to calculate the total number of burritos consumed by George
total_consumed_george(TotalConsumed) :-
TotalConsumed is 20.  % George eats 20 burritos
% Define the predicate to calculate the total number of burritos ordered
total_ordered(TotalOrdered) :-
TotalOrdered is 600.  % George orders 600 burritos
% Define the predicate to calculate the total number of leftover burritos
total_leftover_burritos(TotalLeftover) :-
total_distributed_students(Distributed),  % Calculate total burritos distributed to students
total_consumed_george(Consumed),  % Calculate total burritos consumed by George
total_ordered(Ordered),  % Get the total number of burritos ordered
TotalLeftover is Ordered - (Distributed + Consumed).  % Calculate total leftover burritos
% Query predicate to run the program and get the result
query(TotalLeftover) :-
total_leftover_burritos(TotalLeftover).
% Uncomment the following line to run the query
% ?- query(TotalLeftover).
%query(TotalLeftover).