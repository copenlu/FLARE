% Define the initial number of apples that fell from the tree
apples_fell_initially(2).
% Define Newton's actions
newton_picked_up_and_threw(InitialApples, ApplesThrown, ApplesRemaining) :-
ApplesThrown is InitialApples - 1,
ApplesRemaining is ApplesThrown + 5.
newton_picked_up_and_kept(InitialApples, ApplesKept, ApplesRemaining) :-
ApplesKept is InitialApples - 1,
ApplesRemaining is ApplesKept + 1.
% Calculate the total number of apples Newton brought home
apples_fell_initially(Initial),
newton_picked_up_and_threw(Initial, _, ApplesAfterFirstThrow),
newton_picked_up_and_kept(ApplesAfterFirstThrow, _, ApplesAfterSecondThrow),
TotalApples is ApplesAfterSecondThrow.
% Query predicate to get the total number of apples Newton brought home
query(TotalApples) :-
TotalApples.
% Uncomment the following line to run the query
% ?- query(TotalApples).
%query(TotalApples).