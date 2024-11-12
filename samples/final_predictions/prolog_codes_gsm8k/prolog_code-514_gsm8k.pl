% Define constants
total_yards_in_skein(364).
fraction_used_by_mariah(1/4).
fraction_used_by_grandma(1/2).
% Calculate yards of yarn used by Mariah
yards_used_by_mariah(YardsUsed) :-
total_yards_in_skein(TotalYards),
fraction_used_by_mariah(Fraction),
YardsUsed is Fraction * TotalYards.
% Calculate yards of yarn used by Mariah's grandma
yards_used_by_grandma(YardsUsed) :-
total_yards_in_skein(TotalYards),
fraction_used_by_grandma(Fraction),
YardsUsed is Fraction * TotalYards.
% Calculate total yards of yarn used by Mariah and her grandma
total_yards_used(TotalYards) :-
yards_used_by_mariah(MariahYards),
yards_used_by_grandma(GrandmaYards),
TotalYards is MariahYards + GrandmaYards.
% Query to calculate the total yards of yarn used by Mariah and her grandma
query(TotalYards) :-
total_yards_used(TotalYards).
% Uncomment the following line to run the query and get the total yards used
% ?- query(TotalYards).
%query(TotalYards).