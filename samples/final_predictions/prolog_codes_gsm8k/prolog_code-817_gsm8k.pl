% Define the duration of each song
song_duration(deck_the_halls, 150).
song_duration(jingle_bells, 240).
% Calculate the total duration of singing "Deck the Halls" twice
total_deck_the_halls_duration(TotalDuration) :-
song_duration(deck_the_halls, Duration),
TotalDuration is Duration * 2.
% Calculate the duration of singing "Jingle Bells" once
jingle_bells_duration(Duration) :-
song_duration(jingle_bells, Duration).
% Calculate the total time spent caroling
total_caroling_duration(TotalDuration) :-
total_deck_the_halls_duration(DeckDuration),
jingle_bells_duration(JingleDuration),
TotalDuration is DeckDuration + JingleDuration.
% Query to calculate the total time spent caroling
query(TotalDuration) :-
total_caroling_duration(TotalDuration).
% Uncomment the following line to run the query and calculate the total time spent caroling
% ?- query(TotalDuration).
%query(TotalDuration).