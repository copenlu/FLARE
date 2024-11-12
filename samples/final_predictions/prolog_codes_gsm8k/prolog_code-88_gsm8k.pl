% Calculate the total number of quilt blocks Gene has
calculate_total_blocks(TotalBlocks) :-
StartAge is 23,
CurrentAge is 34,
YearsVacationing is CurrentAge - StartAge,
VacationsPerYear is 4,
TotalVacations is YearsVacationing * VacationsPerYear,
TotalBlocks is TotalVacations.
% Query to find the total number of quilt blocks
query(TotalBlocks) :-
calculate_total_blocks(TotalBlocks).
% Uncomment the following line to run the query and calculate the total number of quilt blocks
% ?- query(TotalBlocks).
%query(TotalBlocks).