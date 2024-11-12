% Define the rule for filling holes
fill_holes(TotalHoles, Day) :-
DogDigs = 6,
NateFills = 9,
NewHoles = DogDigs - NateFills,
UpdatedTotalHoles is TotalHoles + NewHoles,
UpdatedDay is Day + 1,
(UpdatedTotalHoles > 0 ->
fill_holes(UpdatedTotalHoles, UpdatedDay);
Weeks is Day / 7,
format('It takes ~2f weeks to fill in all the holes.', [Weeks])
).
% Initialize the filling process with the total number of holes and day 1
fill_holes(84, 1). % 84 holes dug in 14 days
% Define a query predicate to run the filling process
query :-
fill_holes(84, 1).
% Uncomment the line below to run the query
% ?- query.
% ?- query.