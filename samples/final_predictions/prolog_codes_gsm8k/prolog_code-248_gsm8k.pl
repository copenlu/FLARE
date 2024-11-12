% Define the total number of letters received in a week
total_letters_received(NumPenPals, NumStopped, LettersPerWeek) :-
TotalPenPals is NumPenPals - NumStopped,
LettersPerWeek is TotalPenPals * 2.
% Define the total number of pages to write in response to received letters
total_pages_to_write(TotalLetters, PagesPerLetter, TotalPages) :-
TotalPages is TotalLetters * PagesPerLetter.
% Define the total time spent writing in minutes
total_time_writing(PagesToWrite, PageWritingRate, TotalTimeMinutes) :-
TotalTimeMinutes is PagesToWrite * 6 / PageWritingRate.
% Define the conversion from minutes to hours
total_hours_writing(TotalTimeMinutes, TotalTimeHours) :-
TotalTimeHours is TotalTimeMinutes / 60.
% Calculate the total hours Mike spends writing in a week
total_hours_writing_week(TotalHours) :-
total_letters_received(5, 2, TotalLetters),  % Mike has 5 pen pals, stopped writing to 2
total_pages_to_write(TotalLetters, 5, PagesToWrite),  % Each letter is 5 pages long
total_time_writing(PagesToWrite, 6, TotalTimeMinutes),  % Mike writes a page every 6 minutes
total_hours_writing(TotalTimeMinutes, TotalHours).
% Query predicate to run the program and get the result
query(TotalHours) :-
total_hours_writing_week(TotalHours).
% Uncomment the following line to run the query
% ?- query(TotalHours).
%query(TotalHours).