% Define the total capacity of the box and the number of missing pencils
total_pencils(20).
pencils_missing(4).
% Calculate the number of remaining pencils in the box
remaining_pencils(TotalPencils, PencilsMissing, RemainingPencils) :-
RemainingPencils is TotalPencils - PencilsMissing.
% Calculate the number of pairs of pencils in the box
pairs_of_pencils(RemainingPencils, Pairs) :-
Pairs is RemainingPencils // 2.
% Query predicate to find the number of pairs of pencils in the box
query(Pairs) :-
total_pencils(TotalPencils),
pencils_missing(PencilsMissing),
remaining_pencils(TotalPencils, PencilsMissing, RemainingPencils),
pairs_of_pencils(RemainingPencils, Pairs).
% Uncomment the line below to run the query
% query(Pairs).
%query(Pairs).