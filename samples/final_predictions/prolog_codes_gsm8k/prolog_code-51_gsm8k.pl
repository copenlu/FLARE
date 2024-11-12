% Define the rule to calculate the total number of unoccupied units
unoccupied_units(TotalFloors, UnitsPerFloor, OccupancyFraction, UnoccupiedUnits) :-
TotalUnits is TotalFloors * UnitsPerFloor,      % Calculate the total number of units in the building
OccupiedUnits is TotalUnits * OccupancyFraction, % Calculate the number of occupied units
UnoccupiedUnits is TotalUnits - OccupiedUnits.   % Calculate the number of unoccupied units
% Query to find the total number of unoccupied units in the building
query_unoccupied_units(UnoccupiedUnits) :-
unoccupied_units(15, 8, 3/4, UnoccupiedUnits).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_unoccupied_units(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).