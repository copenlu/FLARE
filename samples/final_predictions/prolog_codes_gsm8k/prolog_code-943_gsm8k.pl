% Define the number of cats Larry has
cats(3).
% Define the number of dogs Larry has (3 times the number of cats)
dogs(Dogs) :- cats(Cats), Dogs is 3 * Cats.
% Define the number of rabbits Larry has (2 fewer than the number of dogs)
rabbits(Rabbits) :- dogs(Dogs), Rabbits is Dogs - 2.
% Define the number of fish Larry has (3 times the number of rabbits)
fish(Fish) :- rabbits(Rabbits), Fish is 3 * Rabbits.
% Define the number of gerbils Larry has (1/3 the number of fish)
gerbils(Gerbils) :- fish(Fish), Gerbils is Fish / 3.
% Define the total number of pets Larry has
total_pets(Total) :- cats(Cats), dogs(Dogs), rabbits(Rabbits), fish(Fish), gerbils(Gerbils), Total is Cats + Dogs + Rabbits + Fish + Gerbils.
% Query to find the total number of pets Larry has
query(Total) :- total_pets(Total).
% Uncomment the line below to run the query
% ?- query(Total).
%query(Total).