% Define the time spent on each activity per week
time_videos_per_week(72).  % Assumed time spent on videos per week in minutes
time_songs_per_week(120).  % Assumed time spent on writing songs per week in minutes
time_makeup_per_week(90).  % Assumed time spent on makeup per week in minutes
% Calculate the total time spent on TikTok per week
total_time_per_week(TotalTime) :-
time_videos_per_week(VideosTime),
time_songs_per_week(SongsTime),
time_makeup_per_week(MakeupTime),
TotalTime is VideosTime + SongsTime + MakeupTime.
% Calculate the total time spent on TikTok in a month (4 weeks)
total_time_per_month(TotalTimeMonth) :-
total_time_per_week(WeeklyTime),
TotalTimeMonth is WeeklyTime * 4.
% Query predicate to find the total time spent on TikTok in a month
query(TotalTimeMonth) :-
total_time_per_month(TotalTimeMonth).
% Uncomment the line below to run the query
% query(TotalTimeMonth).
%query(TotalTimeMonth).