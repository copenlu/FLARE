% Predicate to calculate Anna's total silver pesos
anna_silver_pesos(AxelSilverPesos, AnnaSilverPesos) :-
AnnaSilverPesos is 2 * AxelSilverPesos.
% Predicate to calculate Anna's total gold pesos
anna_gold_pesos(AxelGoldPesos, AnnaGoldPesos) :-
AnnaGoldPesos is AxelGoldPesos + 40.
% Predicate to calculate the total number of pesos Axel and Anna have together
total_pesos(AxelSilverPesos, AxelGoldPesos, AnnaSilverPesos, AnnaGoldPesos, Total) :-
Total is AxelSilverPesos + AnnaSilverPesos + AxelGoldPesos + AnnaGoldPesos.
% Main predicate to calculate the total number of pesos Axel and Anna have together
axel_and_anna_pesos(AxelSilver, AxelGold, Total) :-
anna_silver_pesos(AxelSilver, AnnaSilver),
anna_gold_pesos(AxelGold, AnnaGold),
total_pesos(AxelSilver, AxelGold, AnnaSilver, AnnaGold, Total).
% Query to find out the total number of pesos Axel and Anna have together
query(Total) :-
axel_and_anna_pesos(50, 80, Total).
% Uncomment the following line to run the query
% ?- query(Total).
%query(Total).