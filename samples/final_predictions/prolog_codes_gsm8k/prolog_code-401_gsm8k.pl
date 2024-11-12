% Define the popsicle ratio
popsicle_ratio(5, 6).
% Define the total number of popsicles
total_popsicles(165).
% Calculate the difference in popsicles between Sam and Betty
popsicles_difference(Difference) :-
popsicle_ratio(BettyParts, SamParts),
total_popsicles(Total),
TotalParts is BettyParts + SamParts,
SamPopsicles is SamParts / TotalParts * Total,
BettyPopsicles is Total - SamPopsicles,
Difference is SamPopsicles - BettyPopsicles.
% Query to find the difference in popsicles between Sam and Betty
query(Difference) :-
popsicles_difference(Difference).
% Uncomment the following line to run the query
% ?- query(Difference).
%query(Difference).