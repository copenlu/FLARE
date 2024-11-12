% Define the ratio of cats to dogs
cats_to_dogs_ratio(2).
% Calculate the number of cats based on the ratio
calculate_cats(Cats, Dogs) :-
cats_to_dogs_ratio(Ratio),
Cats is Ratio * Dogs.
% Calculate the total number of dogs and cats combined
total_dogs_cats(Dogs, Cats, Total) :-
Total is Dogs + Cats.
% Calculate the total number of pets in the neighborhood
total_pets(Dogs, Cats, Rabbits, TotalPets) :-
total_dogs_cats(Dogs, Cats, TotalDC),
Rabbits is TotalDC - 12,
TotalPets is Dogs + Cats + Rabbits.
% Given information
dogs(60).
% Query to find the total number of pets in the neighborhood
query(TotalPets) :-
dogs(D), calculate_cats(C, D), total_pets(D, C, R, TotalPets).
% Uncomment the following line to run the query and calculate the total number of pets
% ?- query(TotalPets).
%query(TotalPets).