% Define musical genres
genre(hiphop).
genre(classical).
% Define characteristics of genres
characteristic(hiphop, rhythmic).
characteristic(hiphop, spoken_lyrics).
characteristic(classical, orchestral).
characteristic(classical, instrumental).
% Define Ludacris's career details
artist(ludacris).
primary_genre(ludacris, hiphop).
% Define Ludacris's discography and collaborations
discography(ludacris, [word_of_mouf, chicken_n_beer, release_therapy]).
collaboration(ludacris, pharrell, money_maker).
collaboration(ludacris, usher, yeah).
% Define any cross-genre activity (assumed none)
cross_genre_performance(ludacris, classical, no). % Assumed atom/predicate
% Define instances of using classical music elements (assumed none)
uses_classical_elements(ludacris, no). % Assumed atom/predicate
% Define Ludacris's involvement in classical music
performs_genre(Artist, Genre) :-
primary_genre(Artist, Genre).
% Extend to consider cross-genre performances
performs_genre(Artist, Genre) :-
cross_genre_performance(Artist, Genre, yes).
% Extend to consider use of classical elements as performing classical music
performs_genre(Artist, classical) :-
uses_classical_elements(Artist, yes).
% Query to determine if Ludacris performs classical music
query :-
performs_genre(ludacris, classical).
% Uncomment the line below to run the query
 :- query.
%query.