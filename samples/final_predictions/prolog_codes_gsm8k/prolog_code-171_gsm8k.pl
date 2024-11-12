% Define the total number of eggs needed for a certain number of flans
eggs_needed_for_flans(FlanCount, EggsNeeded) :-
EggsNeeded is FlanCount * 3.
% Define the number of baskets needed to gather enough eggs
baskets_needed(EggsNeeded, EggsPerBasket, BasketsNeeded) :-
BasketsNeeded is ceil(EggsNeeded / EggsPerBasket).
% Define how many times Sandra needs to babysit
times_babysit(BasketsNeeded, BabysitCount) :-
BabysitCount is ceil(BasketsNeeded / 9).
% Calculate the number of times Sandra needs to babysit
query(BabysitCount) :-
eggs_needed_for_flans(15, TotalEggs),  % 15 Spanish flans
baskets_needed(TotalEggs, 9, Baskets),  % 9 eggs per basket
times_babysit(Baskets, BabysitCount).
% Uncomment the line below to run the query in SWI-Prolog
% ?- query(BabysitCount).
%query(BabysitCount).