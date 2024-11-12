% Define the total number of pictures and albums
total_pictures(72).
total_albums(8).
% Calculate the number of pictures in each album
pictures_per_album(TotalPictures, TotalAlbums, PicturesPerAlbum) :-
PicturesPerAlbum is TotalPictures / TotalAlbums.
% Calculate the number of selfies
selfies(Selfies) :-
pictures_per_album(72, 8, PicturesPerAlbum),
Selfies is PicturesPerAlbum * 3.
% Calculate the number of portraits
portraits(Portraits) :-
pictures_per_album(72, 8, PicturesPerAlbum),
Portraits is PicturesPerAlbum * 2.
% Query predicate to find the number of selfies and portraits
query(Selfies, Portraits) :-
selfies(Selfies),
portraits(Portraits).
% Uncomment the line below to run the query
% query(Selfies, Portraits).
%query(Selfies, Portraits).