% Define the rule to calculate the number of pencils Anthony kept
pencils_kept(TotalPencils, PencilsKept) :-
PencilsGivenToBrandon is TotalPencils / 2,  % Calculate pencils given to Brandon
RemainingPencilsAfterBrandon is TotalPencils - PencilsGivenToBrandon,  % Calculate remaining pencils after Brandon
PencilsGivenToCharlie is RemainingPencilsAfterBrandon * 3 / 5,  % Calculate pencils given to Charlie
PencilsKept is TotalPencils - PencilsGivenToBrandon - PencilsGivenToCharlie.  % Calculate pencils Anthony kept
% Query to find the number of pencils Anthony kept with 50 total pencils
query_pencils_kept(PencilsKept) :-
pencils_kept(50, PencilsKept).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_pencils_kept(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).