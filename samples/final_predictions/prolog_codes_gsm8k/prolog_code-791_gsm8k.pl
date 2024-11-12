% Define the total hours available on Saturday and Sunday
total_hours_saturday(7).
total_hours_sunday(5).
% Calculate the percentage of time spent playing soccer
percentage_time_playing_soccer(Percentage) :-
total_hours_saturday(SaturdayHours),
total_hours_sunday(SundayHours),
TotalTimeAvailable is SaturdayHours + SundayHours,  % Calculate total time available
VideoGameTime is RemainingTime / 3,                % Calculate time spent playing video games
SoccerTime is RemainingTime - 3 - VideoGameTime,   % Calculate time spent playing soccer
Percentage is (SoccerTime / TotalTimeAvailable) * 100.  % Calculate percentage of time spent playing soccer
% Query predicate to find the percentage of time spent playing soccer
query(Percentage) :-
percentage_time_playing_soccer(Percentage).
% Uncomment the line below to run the query
% ?- query(Percentage).
%query(Percentage).