% Define the duration of the second song as 60% longer than the first song
% Params: FirstSongDuration, SecondSongDuration
song_duration(FirstSongDuration, SecondSongDuration) :-
SecondSongDuration is FirstSongDuration + (0.6 * FirstSongDuration).
% Define the total duration of the cassette
% Params: FirstSongDuration, SecondSongDuration, TotalDuration
total_cassette_duration(FirstSongDuration, SecondSongDuration, TotalDuration) :-
TotalDuration is FirstSongDuration + SecondSongDuration.
% Main predicate to compute the total duration of the cassette
% Params: TotalDuration
calculate_cassette_duration(TotalDuration) :-
% Constants
FirstSongDuration = 5,  % Duration of the first song in minutes
% Calculate the duration of the second song
song_duration(FirstSongDuration, SecondSongDuration),
% Calculate the total duration of the cassette
total_cassette_duration(FirstSongDuration, SecondSongDuration, TotalDuration).
% Query predicate to get the total duration of the cassette
query(TotalDuration) :-
calculate_cassette_duration(TotalDuration).
% Uncomment the following line to run the query
% query(TotalDuration).
%query(TotalDuration).