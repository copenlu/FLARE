% Define the lifetime of Alexander the Great
lifetime(alexander_the_great, 356, 323).
% Define the emergence of Christianity
emergence_of_christianity(33). % Assumed atom/predicate: Christianity began around 33 AD
% Define baptism as a Christian practice starting after the emergence of Christianity
baptism_start_year(Year) :- emergence_of_christianity(Start), Year is Start.
% Check if a person could have been baptized as a Christian
could_be_baptized(Person, CouldBe) :-
lifetime(Person, BirthYear, DeathYear),
baptism_start_year(BaptismYear),
(BaptismYear > DeathYear -> CouldBe = no; CouldBe = yes).
% Query to determine if Alexander the Great could have been baptized
query :-
could_be_baptized(alexander_the_great, CouldBe),
CouldBe = no.
% Uncomment the line below to run the query in a Prolog environment
 :- query.
%query.