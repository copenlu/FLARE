% Define predicates to calculate the number of balloons affected by each event
% Calculate the number of red balloons that burst
% Params: InitialRedBalloons, RedBalloonsBurst
red_balloons_burst(InitialRedBalloons, RedBalloonsBurst) :-
RedBalloonsBurst is round(0.4 * InitialRedBalloons).
% Calculate the number of yellow balloons released
% Params: InitialYellowBalloons, YellowBalloonsReleased
yellow_balloons_released(InitialYellowBalloons, YellowBalloonsReleased) :-
YellowBalloonsReleased is round(0.5 * InitialYellowBalloons).
% Calculate the number of blue balloons added
% Params: BlueBalloonsFound, BlueBalloonsAdded
blue_balloons_added(BlueBalloonsFound, BlueBalloonsAdded) :-
BlueBalloonsAdded is round(0.75 * BlueBalloonsFound).
% Define a predicate to calculate the total number of balloons Sally finally carried
% Params: InitialRedBalloons, InitialGreenBalloons, InitialYellowBalloons, InitialBlueBalloons, TotalBalloons
total_balloons(InitialRedBalloons, InitialGreenBalloons, InitialYellowBalloons, InitialBlueBalloons, TotalBalloons) :-
red_balloons_burst(InitialRedBalloons, RedBalloonsBurst),
yellow_balloons_released(InitialYellowBalloons, YellowBalloonsReleased),
blue_balloons_added(8, BlueBalloonsAdded),  % Assumed atom/predicate: 8 blue balloons found and added
RemainingRedBalloons is InitialRedBalloons - RedBalloonsBurst,
RemainingYellowBalloons is InitialYellowBalloons - YellowBalloonsReleased,
TotalBalloons is RemainingRedBalloons + InitialGreenBalloons + RemainingYellowBalloons + BlueBalloonsAdded.
% Main predicate to compute the total number of balloons Sally finally carried
% Params: TotalBalloons
calculate_total_balloons(TotalBalloons) :-
total_balloons(25, 7, 12, 8, TotalBalloons).  % Initial counts: 25 red, 7 green, 12 yellow, 8 blue balloons
% Query predicate to get the total number of balloons Sally finally carried
query(TotalBalloons) :-
calculate_total_balloons(TotalBalloons).
% Uncomment the following line to run the query
% query(TotalBalloons).
%query(TotalBalloons).