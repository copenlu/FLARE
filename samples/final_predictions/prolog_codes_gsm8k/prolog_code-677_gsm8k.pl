% Define the constraints based on the total legs and heads
calculate_animals(Sheep, Geese) :-
Sheep + Geese =:= 20, % Total heads
4*Sheep + 2*Geese =:= 70. % Total legs
% Query to find the number of sheep
query(Sheep) :-
calculate_animals(Sheep, _).
% Uncomment the following line to run the query and find the number of sheep
% ?- query(Sheep).
%query(Sheep).