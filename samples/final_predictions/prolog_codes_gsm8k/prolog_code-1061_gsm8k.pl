% Predicate to calculate the total time taken to set off all soda fountains
% Params: DrivewayWidth, SpacingBetweenBottles, TimeToMoveBetweenBottles, TotalTime
total_time_to_set_off_soda_fountains(DrivewayWidth, SpacingBetweenBottles, TimeToMoveBetweenBottles, TotalTime) :-
TotalBottles is DrivewayWidth / SpacingBetweenBottles,  % Calculate total number of bottles
TotalTime is TotalBottles * TimeToMoveBetweenBottles.    % Calculate total time taken
% Main predicate to compute the total time taken by Richard to set off all soda fountains
% Params: TotalTime
calculate_total_time(TotalTime) :-
% Constants
DrivewayWidth = 24,          % Assumed atom/predicate: Driveway width in feet
SpacingBetweenBottles = 3,  % Assumed atom/predicate: Spacing between bottles in feet
TimeToMoveBetweenBottles = 5,  % Assumed atom/predicate: Time to move between bottles in seconds
% Calculate total time taken
total_time_to_set_off_soda_fountains(DrivewayWidth, SpacingBetweenBottles, TimeToMoveBetweenBottles, TotalTime).
% Query predicate to get the total time taken to set off all soda fountains
query(TotalTime) :-
calculate_total_time(TotalTime).
% Uncomment the following line to run the query
% query(TotalTime).
%query(TotalTime).