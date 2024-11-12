% Define a predicate to calculate the number of pink and white flamingos
calculate_flamingos(PinkFlamingos, WhiteFlamingos, Difference) :-
InitialPinkFlamingos = 18,  % Assumed atom/predicate: Initial number of pink flamingos
WhiteFlamingosPainted is InitialPinkFlamingos / 3,  % Calculate number of white flamingos painted
TotalPinkFlamingosSunday is InitialPinkFlamingos + 18,  % Calculate total pink flamingos on Sunday
TotalWhiteFlamingosSunday is WhiteFlamingosPainted,  % Calculate total white flamingos on Sunday
Difference is TotalPinkFlamingosSunday - TotalWhiteFlamingosSunday.  % Calculate the difference between pink and white flamingos
% Define a query predicate to find out the difference between pink and white flamingos
query(Difference) :-
calculate_flamingos(_, _, Difference).
% Uncomment the line below to run the query in SWI-Prolog
% query(Difference).
%query(Difference).