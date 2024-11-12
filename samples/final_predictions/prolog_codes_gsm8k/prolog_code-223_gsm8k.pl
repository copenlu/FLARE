% Define the rule to calculate the total number of flowers in the vase
total_flowers_in_vase(Roses, Dahlias, TotalFlowers) :-
Dahlias is Roses + 7,
TotalFlowers is Roses + Dahlias.
% Instantiate the predicates with the given values
% There are 4 roses in the vase
% Dahlias = Roses + 7
% Calculate the total number of flowers in the vase
query(TotalFlowers) :-
total_flowers_in_vase(4, Dahlias, TotalFlowers).
% Uncomment the following line to run the query
% ?- query(TotalFlowers).
%query(TotalFlowers).