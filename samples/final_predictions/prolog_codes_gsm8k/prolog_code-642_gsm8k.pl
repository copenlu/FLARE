% Define the rule to convert internet connection speed from kbps to Mbps per hour
convert_speed(Kbps, MbpsPerHour) :-
MbpsPerSecond is Kbps / 1000,      % Convert speed from kbps to Mbps
MbPerHour is MbpsPerSecond * 3600, % Convert speed from Mbps per second to Mb per hour
MbpsPerHour is MbPerHour / 1000.   % Convert speed from Mb per hour to Mbps per hour
% Query to find Ashley's internet connection speed in Mb per hour
query_speed(MbpsPerHour) :-
convert_speed(20, MbpsPerHour).    % Assumed atom: Ashley's internet connection speed is 20 kbps
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_speed(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).