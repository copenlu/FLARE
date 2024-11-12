% Define the maximum capacity of the media player
max_capacity(100).
% Calculate the number of additional songs Gabriel can add
additional_songs_gabriel(AdditionalGabriel) :-
max_capacity(MaxCapacity),
CurrentSongsGabriel is 20,
AdditionalGabriel is MaxCapacity - CurrentSongsGabriel.
% Calculate the number of additional songs Luri can add
additional_songs_luri(AdditionalLuri) :-
max_capacity(MaxCapacity),
CurrentSongsGabriel is 20,
CurrentSongsLuri is CurrentSongsGabriel * 3,
AdditionalLuri is MaxCapacity - CurrentSongsLuri.
% Calculate the difference in the number of additional songs
difference_additional_songs(Difference) :-
additional_songs_gabriel(AdditionalGabriel),
additional_songs_luri(AdditionalLuri),
Difference is AdditionalGabriel - AdditionalLuri.
% Query to calculate the difference in the number of additional songs Luri can add compared to Gabriel
query(Difference) :-
difference_additional_songs(Difference).
% Uncomment the following line to run the query and calculate the difference
% ?- query(Difference).
%query(Difference).