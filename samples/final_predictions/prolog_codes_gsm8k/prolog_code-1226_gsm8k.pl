% Define a predicate to calculate the total number of pens Alain has
total_pens(RedPacks, PensPerPack, Multiplier, TotalPens) :-
% Calculate the total number of red pens
TotalRedPens is RedPacks * PensPerPack,
% Calculate the total number of black pens
TotalBlackPens is TotalRedPens * Multiplier,
% Calculate the total number of pens Alain has
TotalPens is TotalRedPens + TotalBlackPens.
% Define a query predicate to find out the total number of pens Alain has
query(TotalPens) :-
% Given 5 packs of red pens, each pack has 5 pens, and black pens are twice the red pens
total_pens(5, 5, 2, TotalPens).
% Uncomment the line below to run the query in SWI-Prolog
% query(TotalPens).
%query(TotalPens).