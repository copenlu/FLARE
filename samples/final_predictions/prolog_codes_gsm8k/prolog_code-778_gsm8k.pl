% Define the number of playlists John has and the duration of each song
num_playlists(20).
num_songs_per_playlist(300).
song_duration(10).
% Calculate the total duration of the playlists
total_duration(NumPlaylists, NumSongsPerPlaylist, SongDuration, TotalHours) :-
TotalSongs is NumPlaylists * NumSongsPerPlaylist,  % Calculate total number of songs
TotalHours is TotalSongs * SongDuration.           % Calculate total duration in hours
% Query predicate to find the total duration of the playlists
query(TotalHours) :-
num_playlists(NumPlaylists),
num_songs_per_playlist(NumSongsPerPlaylist),
song_duration(SongDuration),
total_duration(NumPlaylists, NumSongsPerPlaylist, SongDuration, TotalHours).
% Uncomment the line below to run the query
% query(TotalHours).
%query(TotalHours).