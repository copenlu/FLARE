% Define the number of children Great Grandma Jones has
children(3).
% Calculate the number of grandchildren based on the number of children
grandchildren(Children, Grandchildren) :-
Grandchildren is Children * 3.
% Calculate the number of great grand-babies per child
great_grandbabies_per_child(Grandchildren, GreatGrandbabiesPerChild) :-
GreatGrandbabiesPerChild is Grandchildren * 3.
% Calculate the total number of great grand-babies
great_grand_babies(TotalGreatGrandbabies) :-
children(Children),
grandchildren(Children, Grandchildren),
great_grandbabies_per_child(Grandchildren, GreatGrandbabiesPerChild),
TotalGreatGrandbabies is Children * GreatGrandbabiesPerChild.
% Query predicate to find the total number of great grand-babies
query(TotalGreatGrandbabies) :-
great_grand_babies(TotalGreatGrandbabies).
% Uncomment the line below to run the query
% query(TotalGreatGrandbabies).
%query(TotalGreatGrandbabies).