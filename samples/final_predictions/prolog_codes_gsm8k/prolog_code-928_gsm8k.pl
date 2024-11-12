% Define the rule to calculate Harold's free time
calculate_free_time(FreeTime) :-
SleepHours is 10,              % Assumed number of hours Harold sleeps
WorkHours is SleepHours - 2,   % Calculate the number of hours Harold works
DogWalkingHours is 1,          % Assumed number of hours Harold walks his dog
TotalHours is SleepHours + WorkHours + DogWalkingHours,  % Calculate total hours spent on activities
FreeTime is 24 - TotalHours.   % Calculate Harold's free time
% Query to find Harold's free time
query(FreeTime) :-
calculate_free_time(FreeTime).
% Uncomment the line below to run the query
% ?- query(FreeTime).
%query(FreeTime).