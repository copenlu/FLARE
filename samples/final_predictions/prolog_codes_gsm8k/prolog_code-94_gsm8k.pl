% Define the number of pets Cindy has
num_pets(cindy, 4).
% Define the relationships between the number of pets each person has
num_pets(marcia, NumMarcia) :-
num_pets(cindy, CindyPets),
NumMarcia is CindyPets + 2.
num_pets(jan, NumJan) :-
num_pets(marcia, MarciaPets),
NumJan is 3 * MarciaPets.
% Calculate the total number of pets the three have combined
total_pets(Total) :-
num_pets(cindy, CindyPets),
num_pets(marcia, MarciaPets),
num_pets(jan, JanPets),
Total is CindyPets + MarciaPets + JanPets.
% Query to calculate the total number of pets the three have combined
query(Total) :-
total_pets(Total).
% Uncomment the following line to run the query and calculate the total number of pets
% ?- query(Total).
%query(Total).