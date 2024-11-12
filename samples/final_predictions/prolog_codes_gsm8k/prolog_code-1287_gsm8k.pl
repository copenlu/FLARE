% Define the rule to calculate the time taken to return home
time_to_return_home(TotalTime) :-
DistanceOnLand is 100,  % Assumed atom: Distance on land is 100 yards
DistanceInWater is 100, % Assumed atom: Distance in water is 100 yards
SpeedOnLand is 20,      % Assumed atom: Speed on land is 20 yards per minute
SpeedInWater is 10,     % Assumed atom: Speed in water is 10 yards per minute
TimeOnLand is DistanceOnLand / SpeedOnLand,   % Calculate time taken to hop on land
TimeInWater is DistanceInWater / SpeedInWater, % Calculate time taken to swim in water
TotalTime is TimeOnLand + TimeInWater.         % Calculate total time to return home
% Query to find the total time taken to return home
query(TotalTime) :-
time_to_return_home(TotalTime).
% Uncomment the following line to run the query
% ?- query(TotalTime).
%query(TotalTime).