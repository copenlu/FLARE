% Define the calculate_son_age predicate to calculate the age of Carver's son
calculate_son_age(CarverAge, SonAge) :-
SonAge is (CarverAge + 5) / 2.
% Define the given values
carver_age(45). % Assumed atom
% Query predicate to run the program and get the result
query(SonAge) :-
carver_age(CarverAge),  % Get Carver's age
calculate_son_age(CarverAge, SonAge).  % Calculate the age of Carver's son
% Uncomment the following line to run the query
% ?- query(SonAge).
%query(SonAge).