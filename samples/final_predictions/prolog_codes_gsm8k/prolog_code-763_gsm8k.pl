% Define the rule to calculate the number of animals groomed per day
animals_groomed_per_day(TotalAnimals, Days, AnimalsPerDay) :-
TotalGroomingJobs is TotalAnimals,  % Calculate the total number of grooming jobs
AnimalsPerDay is TotalGroomingJobs / Days.  % Calculate the number of animals groomed per day
% Query to find the number of animals groomed per day
query_animals_groomed_per_day(AnimalsPerDay) :-
animals_groomed_per_day(28, 7, AnimalsPerDay).  % Assumed total animals = 28, days = 7
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_animals_groomed_per_day(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).