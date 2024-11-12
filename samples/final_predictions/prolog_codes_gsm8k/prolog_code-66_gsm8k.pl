% Define the rule to calculate miles per gallon
calculate_mpg(MilesDriven, GallonsFilled, MPG) :-
MPG is MilesDriven / GallonsFilled.
% Define the rule to calculate total distance on a full tank
calculate_total_distance(MPG, TankCapacity, TotalDistance) :-
TotalDistance is MPG * TankCapacity.
% Query to find the total distance Sophia can drive on a full tank
query_total_distance(TotalDistance) :-
calculate_mpg(100, 4, MPG),  % Sophia traveled 100 miles and filled 4 gallons
calculate_total_distance(MPG, 12, TotalDistance).  % Tank capacity is 12 gallons
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_distance(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).