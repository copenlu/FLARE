% Define initial population and birth rate
initial_population(50).
female_porcupines(P) :- initial_population(T), P is round(3/5 * T).
birth_rate(4).
% Calculate total population after a year
calculate_population(TotalPopulation) :-
initial_population(Initial),
female_porcupines(Females),
birth_rate(BirthRate),
MonthlyGrowth is Females * BirthRate,
YearlyGrowth is MonthlyGrowth * 12,
TotalPopulation is Initial + YearlyGrowth.
% Query predicate to find the total population after a year
query(TotalPopulation) :-
calculate_population(TotalPopulation).
% Uncomment the line below to run the query
% query(TotalPopulation).
%query(TotalPopulation).