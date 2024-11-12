% Define the rule to calculate John's speed after training
speed_after_training(NormalSpeed, SpeedAfterTraining) :-
SpeedAfterTraining is NormalSpeed * 2.5.
% Define the rule to calculate the time to speak one page
time_to_speak_page(Speed, WordsPerPage, Time) :-
Time is WordsPerPage / Speed.
% Define the rule to calculate the total time to speak a certain number of pages
total_time_to_speak_pages(Speed, WordsPerPage, NumPages, TotalTime) :-
time_to_speak_page(Speed, WordsPerPage, TimePerPage),
TotalTime is TimePerPage * NumPages.
% Query to find the total time to speak 10 pages
query_total_time_to_speak_pages(TotalTime) :-
speed_after_training(150, SpeedAfterTraining),  % Assumed atom: Normal speaking speed is 150 WPM
total_time_to_speak_pages(SpeedAfterTraining, 450, 10, TotalTime).  % Assumed atom: Each page has 450 words
% Define a predicate that returns the correct numerical answer when queried
query(TotalTime) :-
query_total_time_to_speak_pages(TotalTime).
% Uncomment the following line to run the query
% ?- query(TotalTime).
%query(TotalTime).