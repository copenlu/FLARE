% Define a predicate to calculate the total number of legs seen by Jake
total_legs_seen(Spiders, Insects, RareMutants, LegsPerSpider, LegsPerInsect, LegsPerRareMutant, TotalLegs) :-
% Calculate total legs from spiders
TotalLegsFromSpiders is Spiders * LegsPerSpider,
% Calculate total legs from insects
TotalLegsFromInsects is Insects * LegsPerInsect,
% Calculate total legs from rare mutant invertebrates
TotalLegsFromRareMutants is RareMutants * LegsPerRareMutant,
% Calculate the total number of legs seen
TotalLegs is TotalLegsFromSpiders + TotalLegsFromInsects + TotalLegsFromRareMutants.
% Define a query predicate to find out the total number of legs Jake sees
query(TotalLegs) :-
% Given quantities: 80 spiders, 90 insects, 3 rare mutant invertebrates
% Legs per creature: spiders - 8 legs, insects - 6 legs, rare mutants - 10 legs
total_legs_seen(80, 90, 3, 8, 6, 10, TotalLegs).
% Uncomment the line below to run the query in SWI-Prolog
% query(TotalLegs).
%query(TotalLegs).