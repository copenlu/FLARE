% Define the rule to calculate the number of yellow balloons in the bundle
yellow_balloons(YellowBalloons) :-
RedBalloons = 20,  % Assumed number of red balloons
TotalBolognaRed is RedBalloons * 2,  % Calculate total bologna pieces thrown at red balloons
TotalBolognaYellow is 58 - TotalBolognaRed,  % Calculate total bologna pieces thrown at yellow balloons
YellowBalloons is TotalBolognaYellow / 3.  % Calculate the number of yellow balloons
% Query to find the number of yellow balloons in the bundle
query(YellowBalloons) :-
yellow_balloons(YellowBalloons).
% Uncomment the following line to run the query
% ?- query(YellowBalloons).
%query(YellowBalloons).