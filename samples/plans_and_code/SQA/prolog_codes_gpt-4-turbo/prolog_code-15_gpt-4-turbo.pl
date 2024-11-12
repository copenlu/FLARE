% Define the lifespan and active periods of Albert Einstein
person(einstein).
birth_year(einstein, 1879).  % Assumed atom
death_year(einstein, 1955).  % Assumed atom
% Define the establishment of DARPA
organization(darpa).
establishment_year(darpa, 1958).  % Assumed atom
% Check if person was alive before the organization was established
was_person_alive_before_org(Person, Org) :-
birth_year(Person, BirthYear),
death_year(Person, DeathYear),
establishment_year(Org, EstYear),
DeathYear < EstYear.
% Check the focus of Einstein's work and DARPA's goals
focus(einstein, theoretical_physics).  % Assumed atom
focus(darpa, military_technology).  % Assumed atom
% Check if there is an overlap in focus
focus_overlap(Person, Org) :-
focus(Person, Focus1),
focus(Org, Focus2),
Focus1 == Focus2.
% Main query to determine if DARPA influenced Einstein
% Returns true if Einstein was alive after DARPA was established and their focuses overlap
query :-
\+ was_person_alive_before_org(einstein, darpa),
focus_overlap(einstein, darpa).
% Uncomment the line below to run the query
 :- query.
%query.