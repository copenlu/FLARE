% Define the total duration of the concert in minutes
total_concert_time(120).
% Define the total time required for each group (get on stage, perform, exit)
time_per_group(10).
% Define the duration of the intermission
intermission_time(10).
% Calculate the maximum number of groups that can perform within the concert duration
groups_performable(TotalConcertTime, TimePerGroup, IntermissionTime, MaxGroups) :-
TotalGroupTime is TimePerGroup + IntermissionTime,  % Total time per group including intermission
MaxGroups is TotalConcertTime // TotalGroupTime.   % Maximum groups that can perform within the concert duration
% Query predicate to find the maximum number of groups that can perform
query(MaxGroups) :-
total_concert_time(TotalConcertTime),
time_per_group(TimePerGroup),
intermission_time(IntermissionTime),
groups_performable(TotalConcertTime, TimePerGroup, IntermissionTime, MaxGroups).
% Uncomment the line below to run the query
% query(MaxGroups).
%query(MaxGroups).