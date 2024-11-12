% Define the rule to calculate the total number of water balloons
total_balloons(TotalBalloons) :-
InitialBalloons is (4 * 2) + 1,  % Calculate the initial number of water balloons
AdditionalBalloons is 5 * 3,      % Calculate the additional balloons each person received
TotalBalloons is InitialBalloons + AdditionalBalloons.  % Calculate the total number of water balloons
% Query to find the total number of water balloons
query_total_balloons(TotalBalloons) :-
total_balloons(TotalBalloons).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_balloons(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).