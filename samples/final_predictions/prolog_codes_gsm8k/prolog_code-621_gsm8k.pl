% Define the rule to calculate the number of years before tire replacement
years_before_replacement(MilesDrivenPerMonth, RotationsPer2Miles, TotalRotationsAllowed, Years) :-
TotalRotationsPerMonth is (MilesDrivenPerMonth / 2) * RotationsPer2Miles,  % Calculate total rotations per month
Years is TotalRotationsAllowed / TotalRotationsPerMonth / 12.               % Calculate years before replacement
% Query to find the number of years before tire replacement for Jeremy
query_years_before_replacement(Years) :-
years_before_replacement(400, 725, 10440000, Years).  % Given values for Jeremy's driving and tire specifications
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_years_before_replacement(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).