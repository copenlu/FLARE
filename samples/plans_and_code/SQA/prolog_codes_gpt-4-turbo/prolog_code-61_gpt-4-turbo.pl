% Assumed data on the number of songs and average song length in minutes
total_songs(50000000). % Assumed total number of songs in the iTunes catalog
average_song_length(3). % Assumed average song length in minutes
% Assumed daily listening time in hours and conversion to minutes
daily_listening_hours(4).
hours_to_minutes(Hours, Minutes) :- Minutes is Hours * 60.
% Calculate total annual listening time in minutes
annual_listening_minutes(AnnualMinutes) :-
daily_listening_hours(DailyHours),
hours_to_minutes(DailyHours, DailyMinutes),
AnnualMinutes is DailyMinutes * 365.
% Calculate total required listening time to listen to the entire catalog
total_listening_time(TotalMinutes) :-
total_songs(TotalSongs),
average_song_length(AvgLength),
TotalMinutes is TotalSongs * AvgLength.
% Determine if listening to the entire iTunes catalog in one year is feasible
can_listen_all_in_one_year :-
annual_listening_minutes(AnnualMinutes),
total_listening_time(RequiredMinutes),
AnnualMinutes >= RequiredMinutes.
% Query to determine the feasibility
query :- can_listen_all_in_one_year.
% Uncomment the line below to run the query
 :- query.
%query.