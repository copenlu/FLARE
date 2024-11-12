% Define the relationships between the number of queens, babies, and workers
worker_bees(Queens, Babies, Workers) :-
Babies is 2 * Queens,
Workers is 2 * Babies.
% Define the total number of bees in the hive and check if it equals 700
total_bees(Queens, Babies, Workers, TotalBees) :-
worker_bees(Queens, Babies, Workers),
TotalBees is Queens + Babies + Workers,
TotalBees =:= 700.
% Query to find the number of worker bees
query(Workers) :-
total_bees(_, _, Workers, 700), worker_bees(_, _, Workers).
% Uncomment the following line to run the query and find out the number of worker bees
% ?- query(Workers).
%query(Workers).