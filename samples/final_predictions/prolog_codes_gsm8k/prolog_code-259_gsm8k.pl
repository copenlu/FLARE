% Predicate to calculate the total number of animals killed
% Params: CougarsPreviousNight, WolvesToday, CougarsToday, TotalAnimals
total_animals_killed(CougarsPreviousNight, WolvesToday, CougarsToday, TotalAnimals) :-
WolvesToday is 3 * CougarsPreviousNight,
CougarsToday is CougarsPreviousNight - 3,
TotalAnimals is WolvesToday + CougarsToday.
% Predicate to solve the equation and find the values of CougarsPreviousNight and WolvesToday
% Params: CougarsPreviousNight, WolvesToday
solve_equation(CougarsPreviousNight, WolvesToday) :-
TotalAnimals = 25,
WolvesToday is 3 * CougarsPreviousNight,
CougarsToday is CougarsPreviousNight - 3,
TotalAnimals = WolvesToday + CougarsToday.
% Main predicate to compute the total number of animals killed by Rick
% Params: TotalAnimals
calculate_total_animals_killed(TotalAnimals) :-
solve_equation(CougarsPreviousNight, WolvesToday),
total_animals_killed(CougarsPreviousNight, WolvesToday, CougarsToday, TotalAnimals).
% Query predicate to get the total number of animals killed
query(TotalAnimals) :-
calculate_total_animals_killed(TotalAnimals).
% Uncomment the following line to run the query
% query(TotalAnimals).
%query(TotalAnimals).