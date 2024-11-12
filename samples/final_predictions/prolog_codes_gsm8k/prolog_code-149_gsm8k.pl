% Define the number of pineapples per hectare and the total number of hectares
pineapples_per_hectare(100).
total_hectares(10).
% Calculate the total number of pineapples John can harvest within a year
total_pineapples_per_year(TotalPineapples) :-
pineapples_per_hectare(PineapplesPerHectare),
total_hectares(TotalHectares),
TotalPineapples is PineapplesPerHectare * TotalHectares * (12 / 3).
% Query to find the total number of pineapples John can harvest within a year
query(TotalPineapples) :-
total_pineapples_per_year(TotalPineapples).
% Uncomment the following line to run the query and find out the total number of pineapples John can harvest within a year.
% ?- query(TotalPineapples).
%query(TotalPineapples).