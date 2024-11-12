% Define the predicate to calculate the age of the younger son based on the older son's age
calculate_age(OlderAge, YoungerAge) :-
YoungerAge is OlderAge / 2.
% Define the predicate to calculate the total number of oranges washed by both sons
washed_oranges(OlderAge, YoungerAge, TotalWashed) :-
TotalWashed is OlderAge + YoungerAge.
% Define the predicate to calculate the number of oranges left unwashed
unwashed_oranges(TotalOranges, TotalWashed, Unwashed) :-
Unwashed is TotalOranges - TotalWashed.
% Define the query predicate to run the program and get the result
query(Unwashed) :-
calculate_age(8, YoungerAge),  % Oldest son is 8 years old
washed_oranges(8, YoungerAge, TotalWashed),  % Calculate total oranges washed
unwashed_oranges(15, TotalWashed, Unwashed).  % Calculate oranges left unwashed
% Uncomment the following line to run the query
% ?- query(Unwashed).
%query(Unwashed).