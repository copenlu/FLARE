% Define a predicate to calculate the remaining eyeshadow colors after theft and usage
eyeshadow_colors_left(InitialPaletteColors, InitialSetColors, StolenPaletteColors, FractionUsedUp, FinalColorsLeft) :-
% Calculate the total number of eyeshadow colors Amy initially had
TotalColorsInitial is (2 * InitialPaletteColors) + (3 * InitialSetColors),
% Calculate the total number of eyeshadow colors left after the theft
TotalColorsLeft is TotalColorsInitial - StolenPaletteColors,
% Calculate the number of eyeshadow colors used up
ColorsUsedUp is InitialSetColors * FractionUsedUp,
% Calculate the final count of eyeshadow colors left
FinalColorsLeft is TotalColorsLeft - ColorsUsedUp.
% Define a query predicate to find out the remaining eyeshadow colors Amy has
query(FinalColorsLeft) :-
% Initial palette colors: 4 colors, initial set colors: 6 colors, stolen palette colors: 4 colors, fraction used up: 0.5
eyeshadow_colors_left(4, 6, 4, 0.5, FinalColorsLeft).
% Uncomment the line below to run the query in SWI-Prolog
% query(FinalColorsLeft).
%query(FinalColorsLeft).