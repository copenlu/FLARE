% Define constants
quarter_duration(12).
additional_time_last_quarter(5).
total_quarters(4).
% Calculate the total duration of the game
calculate_game_duration(TotalDuration) :-
quarter_duration(QuarterDuration),
additional_time_last_quarter(AdditionalTime),
total_quarters(TotalQuarters),
TotalDuration is (QuarterDuration * TotalQuarters) + AdditionalTime.
% Query to calculate the total duration of the entire game
query(TotalDuration) :-
calculate_game_duration(TotalDuration).
% Uncomment the following line to run the query and calculate the total duration of the game
% ?- query(TotalDuration).
%query(TotalDuration).