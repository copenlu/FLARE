% Define the total number of episodes based on the length of each episode
total_episodes(EpisodeLength, TotalEpisodes) :-
TotalEpisodes is EpisodeLength / 2.
% Define the total time spent watching the show
total_time_watching(EpisodeLength, TotalEpisodes, TotalTime) :-
TotalTime is EpisodeLength * TotalEpisodes.
% Predicate to encapsulate the entire calculation and output the total time spent watching the show
calculate_total_time_watching(TotalTime) :-
EpisodeLength = 20,  % Length of each episode in minutes
total_episodes(EpisodeLength, TotalEpisodes),
total_time_watching(EpisodeLength, TotalEpisodes, TotalTime).
% Query to find the total time John will spend watching the show
query(TotalTime) :-
calculate_total_time_watching(TotalTime).
% Uncomment the following line to run the query
% ?- query(TotalTime).
%query(TotalTime).