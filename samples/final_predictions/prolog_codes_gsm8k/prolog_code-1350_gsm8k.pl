% Define a predicate to represent the system of equations based on animals and legs
animals_legs(Chickens, Cows) :-
Chickens + Cows =:= 20,  % Total number of animals is 20
2*Chickens + 4*Cows =:= 70.  % Total number of legs is 70
% Define a predicate to calculate the number of chickens on the farm
chickens_on_farm(Chickens) :-
animals_legs(Chickens, _).  % Use anonymous variable for cows as it's not needed
% Query predicate to run the program and get the result
query(Chickens) :-
chickens_on_farm(Chickens).
% Uncomment the following line to run the query
% ?- query(Chickens).
%query(Chickens).