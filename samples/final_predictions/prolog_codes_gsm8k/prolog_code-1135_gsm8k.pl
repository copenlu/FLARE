% Define the total_population predicate to calculate the total school population
total_population(Boys, TotalPopulation) :-
TotalPopulation is Boys / 0.4.
% Define the girls_in_school predicate to calculate the number of girls in the school
girls_in_school(TotalPopulation, Boys, Girls) :-
Girls is TotalPopulation - Boys.
% Query predicate to run the program and get the result
query(Girls) :-
total_population(240, TotalPopulation),  % Given 240 boys
girls_in_school(TotalPopulation, 240, Girls).  % Calculate number of girls
% Uncomment the following line to run the query
% ?- query(Girls).
%query(Girls).