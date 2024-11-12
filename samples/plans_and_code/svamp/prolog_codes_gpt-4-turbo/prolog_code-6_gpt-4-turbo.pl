% Define the rule to calculate the number of golf balls remaining after losses
remaining_golf_balls(InitialGolfBalls, LostOnTuesday, LostOnWednesday, FinalGolfBalls) :-
TotalLost is LostOnTuesday + LostOnWednesday,  % Calculate total golf balls lost
FinalGolfBalls is InitialGolfBalls - TotalLost.  % Calculate final number of golf balls
% Predicate to execute the query and return the result
query(FinalGolfBalls) :-
remaining_golf_balls(58, 23, 2, FinalGolfBalls).  % Inputs are specific to the problem statement
% Uncomment the line below to run the query in SWI-Prolog
% ?- query(FinalGolfBalls).
%query(FinalGolfBalls).