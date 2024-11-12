% Define the initial_points predicate to calculate Erin's initial points before scoring 14 points
initial_points(ErinInitial) :-
ErinCurrent is 14 + ErinInitial,  % Erin's current points after scoring 14
SaraPoints = 8,  % Sara's points
ErinCurrent = 3 * SaraPoints,  % Erin's current points is three times Sara's points
ErinInitial is ErinCurrent - 14.  % Calculate Erin's initial points
% Query predicate to run the program and get the result
query(ErinInitial) :-
initial_points(ErinInitial).
% Uncomment the following line to run the query
% ?- query(ErinInitial).
%query(ErinInitial).