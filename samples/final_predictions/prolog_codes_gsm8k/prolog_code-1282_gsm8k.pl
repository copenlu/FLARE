% Define the rule to calculate the total time taken to solve all six sides of the Rubik's cube
rubiks_cube_time(TotalTime) :-
FirstSideTime is 5,                     % Time taken for the first side
SecondSideTime is FirstSideTime * 2,    % Time taken for the second side
ThirdSideTime is FirstSideTime * 2,     % Time taken for the third side
FourthSideTime is FirstSideTime / 2,    % Time taken for the fourth side
FifthSideTime is FirstSideTime / 2,     % Time taken for the fifth side
TotalTime is FirstSideTime + SecondSideTime + ThirdSideTime + FourthSideTime + FifthSideTime + FifthSideTime.  % Total time to solve all sides
% Query to find the total time taken to solve all six sides of the Rubik's cube
query(TotalTime) :-
rubiks_cube_time(TotalTime).
% Uncomment the following line to run the query
% ?- query(TotalTime).
%query(TotalTime).