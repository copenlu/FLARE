% Define a predicate to calculate the number of balloons thrown during the water balloon fight
balloons_thrown(Packs, BalloonsPerPack, BalloonsLeft, TotalBalloonsThrown) :-
% Calculate the total number of balloons they started with
TotalBalloons is Packs * BalloonsPerPack,
% Calculate the total number of balloons thrown
TotalBalloonsThrown is TotalBalloons - BalloonsLeft.
% Define a query predicate to find out the total number of balloons thrown
query(TotalBalloonsThrown) :-
% Given 10 packs with 30 balloons per pack and 12 balloons left
balloons_thrown(10, 30, 12, TotalBalloonsThrown).
% Uncomment the line below to run the query in SWI-Prolog
% query(TotalBalloonsThrown).
%query(TotalBalloonsThrown).