% Define total amount earned from selling Lego sets
total_earned(LegoSetsSold, PricePerSet, TotalEarned) :-
TotalEarned is LegoSetsSold * PricePerSet.
% Define total amount spent on buying video games
total_spent(GamesBought, PricePerGame, TotalSpent) :-
TotalSpent is GamesBought * PricePerGame.
% Define remaining money after buying video games
remaining_money(TotalEarned, TotalSpent, Remaining) :-
Remaining is TotalEarned - TotalSpent.
% Define number of Lego sets remaining
lego_sets_remaining(Remaining, PricePerSet, LegoSetsRemaining) :-
LegoSetsRemaining is Remaining // PricePerSet.
% Calculate the number of Lego sets John still has
john_lego_sets(LegoSetsSold, PricePerSet, GamesBought, PricePerGame, LegoSetsRemaining) :-
total_earned(LegoSetsSold, PricePerSet, TotalEarned),
total_spent(GamesBought, PricePerGame, TotalSpent),
remaining_money(TotalEarned, TotalSpent, Remaining),
lego_sets_remaining(Remaining, PricePerSet, LegoSetsRemaining).
% Query to find out how many Lego sets John still has
query(LegoSetsRemaining) :-
john_lego_sets(13, 15, 8, 20, LegoSetsRemaining).
% Uncomment the following line to run the query
% ?- query(LegoSetsRemaining).
%query(LegoSetsRemaining).