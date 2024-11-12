% Define the total_petals_orchids predicate to calculate the total number of petals for orchids
total_petals_orchids(TotalOrchidPetals) :-
TotalOrchidPetals is 5 * 5.  % 5 orchids with 5 petals each
% Define the total_petals_daisies predicate to calculate the total number of petals for African daisies
total_petals_daisies(TotalDaisyPetals) :-
TotalDaisyPetals is 4 * 10.  % 4 African daisies with 10 petals each
% Define the petal_difference predicate to calculate the difference in petals between daisies and orchids
petal_difference(Difference) :-
total_petals_orchids(OrchidPetals),  % Calculate total orchid petals
total_petals_daisies(DaisyPetals),  % Calculate total daisy petals
Difference is DaisyPetals - OrchidPetals.  % Calculate the difference in petals
% Query predicate to run the program and get the result
query(Difference) :-
petal_difference(Difference).
% Uncomment the following line to run the query
% ?- query(Difference).
%query(Difference).