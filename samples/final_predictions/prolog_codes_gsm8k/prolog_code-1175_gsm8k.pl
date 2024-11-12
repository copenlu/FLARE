% Define the number of large-sized scenes required for the project
large_scenes_required(45).
% Define the number of medium-sized scenes required for the project
medium_scenes_required(36).
% Define the number of small-sized scenes required for the project
small_scenes_required(49).
% Define the number of large-sized scenes Lauren can draw per day
large_scenes_per_day(5).
% Define the number of medium-sized scenes Lauren can draw per day
medium_scenes_per_day(6).
% Define the number of small-sized scenes Lauren can draw per day
small_scenes_per_day(7).
% Calculate the number of days needed to complete large-sized scenes
days_to_complete_large(LargeDays) :-
large_scenes_required(LargeRequired),
large_scenes_per_day(LargePerDay),
LargeDays is LargeRequired / LargePerDay.
% Calculate the number of days needed to complete medium-sized scenes
days_to_complete_medium(MediumDays) :-
medium_scenes_required(MediumRequired),
medium_scenes_per_day(MediumPerDay),
MediumDays is MediumRequired / MediumPerDay.
% Calculate the number of days needed to complete small-sized scenes
days_to_complete_small(SmallDays) :-
small_scenes_required(SmallRequired),
small_scenes_per_day(SmallPerDay),
SmallDays is SmallRequired / SmallPerDay.
% Calculate the total number of days needed to complete all picture scenes
total_days_needed(TotalDays) :-
days_to_complete_large(LargeDays),
days_to_complete_medium(MediumDays),
days_to_complete_small(SmallDays),
TotalDays is max(LargeDays, max(MediumDays, SmallDays)).
% Query predicate to run the program and get the result
query(TotalDays) :-
total_days_needed(TotalDays).
% Uncomment the following line to run the query
% ?- query(TotalDays).
%query(TotalDays).