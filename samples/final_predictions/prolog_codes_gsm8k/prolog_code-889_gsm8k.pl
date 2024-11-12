% Define the predicate to calculate the weight of sweet potatoes based on the weight of potatoes
sweet_potatoes_weight(PotatoesWeight, SweetPotatoesWeight) :-
SweetPotatoesWeight is PotatoesWeight * 2.
% Define the predicate to calculate the weight of carrots based on the weight of sweet potatoes
carrots_weight(SweetPotatoesWeight, CarrotsWeight) :-
CarrotsWeight is SweetPotatoesWeight - 3.
% Define the predicate to find the weight of carrots Daisy bought
daisys_carrots_weight(PotatoesWeight, CarrotsWeight) :-
sweet_potatoes_weight(PotatoesWeight, SweetPotatoesWeight),
carrots_weight(SweetPotatoesWeight, CarrotsWeight).
% Query predicate to run the program and get the result
query(CarrotsWeight) :-
daisys_carrots_weight(5, CarrotsWeight).
% Uncomment the following line to run the query
% ?- query(CarrotsWeight).
%query(CarrotsWeight).