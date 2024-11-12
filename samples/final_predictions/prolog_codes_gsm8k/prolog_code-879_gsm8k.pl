% Define the initial number of infected people
initial_infected(10).
% Define the number of people infected by each infected person per day
infections_per_person(6).
% Define the base case for infected people on day 0
infected_on_day(0, Infected) :-
initial_infected(Infected).
% Define the recursive rule for infected people on each day
infected_on_day(Day, Infected) :-
Day > 0,
PrevDay is Day - 1,
infected_on_day(PrevDay, PrevInfected),
infections_per_person(InfectionsPerPerson),
Infected is PrevInfected + PrevInfected * InfectionsPerPerson.
% Calculate the total number of infected people after a certain number of days
total_infected_after_days(Days, TotalInfected) :-
infected_on_day(Days, TotalInfected).
% Query predicate to find the total number of infected people after three days
query(TotalInfected) :-
total_infected_after_days(3, TotalInfected).
% Uncomment the line below to run the query
% query(TotalInfected).
%query(TotalInfected).