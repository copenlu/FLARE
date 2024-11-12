% Facts representing the given information
age(sally_thirtytwo, 8).
age(sally_four, 8).
age(granny_red, AgeGrannyRed) :- age(sally_four, AgeSallyFour), AgeGrannyRed is 2 * AgeSallyFour.
age(sally_two, AgeSallyTwo) :- age(granny_red, AgeGrannyRed), AgeSallyTwo is AgeGrannyRed + 3.
% Calculate total age of the four birds
total_age(TotalAge) :- age(sally_thirtytwo, AgeSallyThirtytwo), age(granny_red, AgeGrannyRed), age(sally_four, AgeSallyFour), age(sally_two, AgeSallyTwo), TotalAge is AgeSallyThirtytwo + AgeGrannyRed + AgeSallyFour + AgeSallyTwo.
% Query predicate to find the total age of the four birds
query(TotalAge) :-
total_age(TotalAge).
% Uncomment the line below to run the query in SWI-Prolog
% ?- query(TotalAge).
%query(TotalAge).