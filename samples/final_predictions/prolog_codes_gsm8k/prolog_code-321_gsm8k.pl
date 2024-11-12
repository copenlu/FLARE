% Define the rule to calculate Noah's age six years ago when he was half as old as Cera
noah_age_six_years_ago(NoahAge) :-
CeraAge is 46,  % Assumed atom/predicate: Cera's current age is 46
NoahAge is CeraAge / 2 - 6.
% Define the rule to calculate the population of Chile six years ago based on Noah's age
chile_population_six_years_ago(ChilePopulation) :-
noah_age_six_years_ago(NoahAge),
ChilePopulation is 3000 * NoahAge.
% Define the rule to calculate the current population of Chile based on the population six years ago
current_chile_population(CurrentPopulation) :-
chile_population_six_years_ago(ChilePopulation),
CurrentPopulation is 2 * ChilePopulation.
% Query predicate to run the program and get the result
query(CurrentPopulation) :-
current_chile_population(CurrentPopulation).
% Uncomment the following line to run the query
% ?- query(CurrentPopulation).
%query(CurrentPopulation).