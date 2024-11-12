% Facts about the artists
artist(jay_z, hip_hop, 1986, 2023).
artist(louis_armstrong, jazz, 1920, 1971).
% Rule to check if two artists could collaborate
could_collaborate(Artist1, Artist2) :-
artist(Artist1, _, Start1, End1),
artist(Artist2, _, Start2, End2),
Start1 =< End2,
End1 >= Start2.
% Rule to check genre compatibility
genre_compatible(Genre1, Genre2) :-
Genre1 = Genre2. % Assumed atom/predicate
% Enhanced rule for collaboration with genre compatibility
could_collaborate_enhanced(Artist1, Artist2) :-
artist(Artist1, Genre1, Start1, End1),
artist(Artist2, Genre2, Start2, End2),
Start1 =< End2,
End1 >= Start2,
genre_compatible(Genre1, Genre2).
% Query predicate for getting all possible collaborations
query :-
could_collaborate(jay_z, louis_armstrong),
could_collaborate_enhanced(jay_z, louis_armstrong).
%query.