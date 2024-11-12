% Define the relationship between the number of photographs Jamal's phone can hold and Brittany's phone
jamal_photos(JamalPhotos, BrittanyPhotos) :-
BrittanyPhotos is JamalPhotos / 6.
% Define the relationship between the number of photographs Brittany's phone can hold and the number of birds in Jamal's photograph
brittany_photos(BrittanyPhotos, BirdsInJamalPhoto) :-
BirdsInJamalPhoto is BrittanyPhotos * 50.
% Calculate the number of ducks in Jamal's photograph
calculate_ducks(Ducks) :-
jamal_photos(JamalPhotos, _),  % Assumed atom/predicate
brittany_photos(_, BirdsInJamalPhoto),  % Assumed atom/predicate
JamalPhotos is 1800,
BirdsInJamalPhoto is BrittanyPhotos * 50,
Ducks is BirdsInJamalPhoto.
% Query to find the number of ducks in Jamal's photograph
query(Ducks) :-
calculate_ducks(Ducks).
% Uncomment the following line to run the query and calculate the number of ducks
% ?- query(Ducks).
%query(Ducks).