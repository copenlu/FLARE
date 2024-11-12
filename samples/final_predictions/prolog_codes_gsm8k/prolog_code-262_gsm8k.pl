% Define a rule to calculate the total number of cows initially
initial_cow_count(Stalls, InitialCows) :-
InitialCows is Stalls * 20. % Assumed atom: 20 cows per stall
% Define a rule to calculate the total number of cows after distribution
total_cow_count(InitialCows, NewCows, TotalCows) :-
TotalCows is InitialCows + NewCows.
% Define a rule to calculate the number of cows in a specific number of stalls
cows_in_stalls(TotalCows, Stalls, CowsInStalls) :-
CowsInStalls is Stalls * (TotalCows // 20). % Assumed atom: 20 cows per stall
% Main predicate to compute the number of cows in 8 stalls after distribution
calculate_cows_in_stalls(CowsInStalls) :-
% Constants
InitialStalls = 10,
NewCows = 40,
NewStalls = 20,
TargetStalls = 8,
% Calculate initial cow count
initial_cow_count(InitialStalls, InitialCows),
% Calculate total cow count after distribution
total_cow_count(InitialCows, NewCows, TotalCows),
% Calculate the number of cows in the target stalls
cows_in_stalls(TotalCows, TargetStalls, CowsInStalls).
% Query predicate to get the number of cows in 8 stalls
query(CowsInStalls) :-
calculate_cows_in_stalls(CowsInStalls).
% Uncomment the following line to run the query
% query(CowsInStalls).
%query(CowsInStalls).