% Define a predicate to calculate the total number of slices available from the pizzas
total_slices(TotalSlices) :-
Pizzas = 7, % Assumed atom: number of pizzas
Slices_per_pizza = 8, % Assumed atom: number of slices per pizza
TotalSlices is Pizzas * Slices_per_pizza.
% Define a predicate to calculate the number of slices each person can have when sharing equally
slices_per_person(SlicesPerPerson) :-
total_slices(TotalSlices),
Friends = 3, % Assumed atom: number of friends
People = Friends + 1, % Henry and his 3 friends
SlicesPerPerson is TotalSlices // People. % Integer division to ensure equal sharing
% Query predicate to run the program and get the result
query(SlicesPerPerson) :-
slices_per_person(SlicesPerPerson).
% Uncomment the following line to run the query
% ?- query(SlicesPerPerson).
%query(SlicesPerPerson).