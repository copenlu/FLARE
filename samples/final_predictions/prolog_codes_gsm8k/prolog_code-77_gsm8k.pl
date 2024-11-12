% Define the rule to calculate the average square footage of a level
average_square_footage(TopLevelSquareFootage, NumLevels, AverageSquareFootage) :-
calculate_square_footage(TopLevelSquareFootage, NumLevels, TotalSquareFootage),
AverageSquareFootage is TotalSquareFootage / NumLevels.
% Define the rule to calculate the total square footage of all levels
calculate_square_footage(_, 0, 0).
calculate_square_footage(CurrentLevelSquareFootage, NumLevels, TotalSquareFootage) :-
NextLevelSquareFootage is CurrentLevelSquareFootage / 2,
NewNumLevels is NumLevels - 1,
calculate_square_footage(NextLevelSquareFootage, NewNumLevels, RemainingTotal),
TotalSquareFootage is CurrentLevelSquareFootage + RemainingTotal.
% Query to find the average square footage of a level in a 4-leveled sandcastle with the top level having a square footage of 16
query_average_square_footage(AverageSquareFootage) :-
average_square_footage(16, 4, AverageSquareFootage).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_average_square_footage(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).