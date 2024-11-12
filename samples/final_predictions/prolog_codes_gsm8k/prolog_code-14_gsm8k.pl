% Define the number of vacuum cleaners sold at the orange house
vacuum_cleaners_sold_orange(LeftAfterOrange, SoldAtOrange) :-
SoldAtOrange is LeftAfterOrange / 2.
% Define the number of vacuum cleaners sold at the red house
vacuum_cleaners_sold_red(LeftAfterRed, SoldAtRed) :-
SoldAtRed is LeftAfterRed - 2.
% Define the number of vacuum cleaners sold at the green house
vacuum_cleaners_sold_green(LeftAfterGreen, SoldAtGreen) :-
SoldAtGreen is LeftAfterGreen / 3.
% Define the initial number of vacuum cleaners Melanie started with
initial_vacuum_cleaners(InitialCount) :-
vacuum_cleaners_sold_orange(5, SoldAtOrange),  % 5 vacuum cleaners left
vacuum_cleaners_sold_red(SoldAtOrange, SoldAtRed),
vacuum_cleaners_sold_green(SoldAtRed, SoldAtGreen),
InitialCount is SoldAtGreen + SoldAtRed + SoldAtOrange + 5.
% Query to find the initial number of vacuum cleaners Melanie started with
query(InitialCount) :-
initial_vacuum_cleaners(InitialCount).
% Uncomment the following line to run the query
% ?- query(InitialCount).
%query(InitialCount).