% Define the rule to calculate the total time spent on the song
total_time(WritingTime, RecordingTime, EditingTime, TotalTime) :-
TotalTime is WritingTime + RecordingTime + EditingTime.
% Define the rule to calculate the percentage of time spent editing
percentage_editing(EditingTime, TotalTime, Percentage) :-
Percentage is (EditingTime / TotalTime) * 100.
% Query to find the percentage of time spent editing
query_percentage_editing(Percentage) :-
WritingTime = 4, % 4 hours spent writing
RecordingTime is WritingTime / 2, % Half the time spent recording
EditingTime = 90, % 90 minutes spent editing
TotalTime is WritingTime + RecordingTime + EditingTime,
percentage_editing(EditingTime, TotalTime, Percentage).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_percentage_editing(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).