% Define the rule to calculate the average typing speed
average_typing_speed(InitialSpeed, ImprovedSpeed, FurtherIncrease, AverageSpeed) :-
Sum is InitialSpeed + ImprovedSpeed + FurtherIncrease,  % Calculate the sum of the three measurements
AverageSpeed is Sum / 3.                                % Calculate the average typing speed
% Query to find the average typing speed based on the given measurements
query_average_typing_speed(AverageSpeed) :-
average_typing_speed(47, 52, 5, AverageSpeed).  % Initial speed: 47 WPM, Improved speed: 52 WPM, Further increase: 5 WPM
% Define a predicate that returns the correct numerical answer when queried
query(AverageSpeed) :-
query_average_typing_speed(AverageSpeed).
% Uncomment the following line to run the query
% ?- query(AverageSpeed).
%query(AverageSpeed).