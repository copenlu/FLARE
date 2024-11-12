% Define the rule to calculate the total sugar needed for a given number of batches of suckers
sugar_needed_suckers(Batches, TotalSugar) :-
TotalSugar is Batches * 30.
% Define the rule to calculate the total sugar needed for a given number of batches of fudge
sugar_needed_fudge(Batches, TotalSugar) :-
TotalSugar is Batches * 70.
% Define the rule to calculate the total sugar needed for specified numbers of batches of suckers and fudge
total_sugar_needed(SuckersBatches, FudgeBatches, TotalSugar) :-
sugar_needed_suckers(SuckersBatches, SuckersSugar),
sugar_needed_fudge(FudgeBatches, FudgeSugar),
TotalSugar is SuckersSugar + FudgeSugar.
% Query predicate to run the program and get the result
query(TotalSugar) :-
total_sugar_needed(8, 1, TotalSugar).
% Uncomment the following line to run the query
% ?- query(TotalSugar).
%query(TotalSugar).