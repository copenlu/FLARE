% Define the number of cows on the farm and sheep in the zoo
cows_farm(30).
sheep_zoo(20).
% Calculate the number of cows in the zoo
cows_zoo(CowsZoo) :- cows_farm(FarmCows), CowsZoo is 2 * FarmCows.
% Calculate the number of sheep on the farm
sheep_farm(SheepFarm) :- sheep_zoo(ZooSheep), SheepFarm is ZooSheep / 2.
% Calculate the total number of animals
total_animals(Total) :-
cows_farm(CowsFarm),
sheep_zoo(SheepZoo),
cows_zoo(CowsZoo),
sheep_farm(SheepFarm),
Total is CowsFarm + SheepFarm + CowsZoo + SheepZoo.
% Query predicate to run the program and get the result
query(Total) :-
total_animals(Total).
% Uncomment the following line to run the query
% ?- query(Total).
%query(Total).