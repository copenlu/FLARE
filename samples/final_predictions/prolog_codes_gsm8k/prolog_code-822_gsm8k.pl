% Define quantities of stuffed animals
quantity(puppies, 3).
quantity(koalas, 5).
quantity(zebras, 2).
quantity(frogs, 4).
% Calculate total number of stuffed animals
total_animals(Total) :-
quantity(puppies, Puppies),
quantity(koalas, Koalas),
quantity(zebras, Zebras),
quantity(frogs, Frogs),
Total is Puppies + Koalas + Zebras + Frogs.
% Calculate number of goats needed to make up 30% of total collection
calculate_goats_needed(GoatsNeeded) :-
total_animals(TotalAnimals),
GoatsNeeded is round(0.3 * TotalAnimals).
% Query to find out how many stuffed goats Bubbles should buy
query(GoatsNeeded) :-
calculate_goats_needed(GoatsNeeded).
% Uncomment the following line to run the query and calculate the number of stuffed goats needed
% ?- query(GoatsNeeded).
%query(GoatsNeeded).