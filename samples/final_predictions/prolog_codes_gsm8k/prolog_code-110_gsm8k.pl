% Define the duration of each episode in minutes
episode_duration(monday, 60).
episode_duration(tuesday, 60).
episode_duration(wednesday, 30).
episode_duration(thursday, 60).
episode_duration(friday, 60).
% Calculate total TV watching time for each day
total_time_per_day(Day, TotalTime) :-
episode_duration(Day, Duration),
TotalTime is Duration.
% Calculate total TV watching time for the week
total_time_for_week(TotalTime) :-
total_time_per_day(monday, MondayTime),
total_time_per_day(tuesday, TuesdayTime),
total_time_per_day(wednesday, WednesdayTime),
total_time_per_day(thursday, ThursdayTime),
total_time_per_day(friday, FridayTime),
TotalTime is MondayTime + TuesdayTime + WednesdayTime + ThursdayTime + FridayTime.
% Calculate the number of 30-minute episodes watched on Wednesday
calculate_30min_episodes_on_wednesday(NumEpisodes) :-
total_time_for_week(TotalTime),
episode_duration(wednesday, WednesdayDuration),
NumEpisodes is (TotalTime - WednesdayDuration) / 30.
% Query to calculate the number of 30-minute episodes watched on Wednesday
query(NumEpisodes) :-
calculate_30min_episodes_on_wednesday(NumEpisodes).
% Uncomment the following line to run the query and calculate the number of 30-minute episodes watched on Wednesday
% ?- query(NumEpisodes).
%query(NumEpisodes).