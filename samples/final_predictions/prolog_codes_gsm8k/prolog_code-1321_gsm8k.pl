% Define the rule for calculating the total area of fabric for the quilt
calculate_area(Num, AreaEach, TotalArea) :-
TotalArea is Num * AreaEach.
% Define the rule for calculating total quilt area
total_quilt_area(NumSmall, NumMedium, NumLarge, AreaSmall, AreaMedium, AreaLarge, TotalQuiltArea) :-
calculate_area(NumSmall, AreaSmall, TotalSmallArea),
calculate_area(NumMedium, AreaMedium, TotalMediumArea),
calculate_area(NumLarge, AreaLarge, TotalLargeArea),
TotalQuiltArea is TotalSmallArea + TotalMediumArea + TotalLargeArea.
% Define a predicate to execute the specific query with given values
query(TotalQuiltArea) :-
total_quilt_area(11, 8, 6, 3, 4, 6, TotalQuiltArea).
% Uncomment the line below to run the query
% ?- query(TotalQuiltArea).
%query(TotalQuiltArea).