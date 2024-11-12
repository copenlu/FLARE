% Define the lifespan of historical figures
lifespan(donatello, 1386, 1466).
% Define the development period of technologies
technology_development(smartphone, 1992, 2023). % Assumed start period for smartphones
% Check if a person lived during the period a technology was available
lived_during_technology_development(Person, Technology) :-
lifespan(Person, BirthYear, DeathYear),
technology_development(Technology, StartYear, EndYear),
BirthYear =< EndYear,
DeathYear >= StartYear.
% Anachronism detection: Person could not have used the technology if they did not live during its development
could_use_technology(Person, Technology) :-
lived_during_technology_development(Person, Technology).
% Logical contradiction for anachronistic scenarios
could_not_use_technology(Person, Technology) :-
lifespan(Person, BirthYear, DeathYear),
technology_development(Technology, StartYear, EndYear),
(DeathYear < StartYear ; BirthYear > EndYear).
% Query to test if Donatello could have used a smartphone
query :-
could_not_use_technology(donatello, smartphone).
% Uncomment the line below to run the query in Prolog environment
% ?- query.
% ?- query.