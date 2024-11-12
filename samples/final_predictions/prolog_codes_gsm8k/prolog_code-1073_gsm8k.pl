% Define the rule to calculate the number of tennis balls retrieved in the first set
retrieve_tennis_balls(FirstSetBalls) :-
% Set up the equation based on the relationships between the sets
X is FirstSetBalls - 4,  % Number of balls retrieved in the second set
TotalBalls is FirstSetBalls + X + (X / 2),  % Total number of balls retrieved
TotalBalls =:= 19,  % Total number of balls retrieved is 19
% Solve for FirstSetBalls
FirstSetBalls = X + 4.
% Query to find the number of tennis balls retrieved in the first set
query(FirstSetBalls) :-
retrieve_tennis_balls(FirstSetBalls).
% Uncomment the following line to run the query
% ?- query(FirstSetBalls).
%query(FirstSetBalls).