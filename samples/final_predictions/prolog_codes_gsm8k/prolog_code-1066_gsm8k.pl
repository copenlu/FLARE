% Define a predicate to calculate the total number of letters delivered on each day
% Params: Day, NumberOfLetters
letters_delivered(monday, 425).  % Assumed atom/predicate
letters_delivered(tuesday, NumberOfLetters) :-
letters_delivered(monday, MondayLetters),
NumberOfLetters is (MondayLetters / 5) + 17.
letters_delivered(wednesday, NumberOfLetters) :-
letters_delivered(tuesday, TuesdayLetters),
NumberOfLetters is (TuesdayLetters * 2) + 5.
% Define a predicate to calculate the total number of letters delivered over the three days
% Params: TotalLetters
total_letters_delivered(TotalLetters) :-
letters_delivered(monday, MondayLetters),
letters_delivered(tuesday, TuesdayLetters),
letters_delivered(wednesday, WednesdayLetters),
TotalLetters is MondayLetters + TuesdayLetters + WednesdayLetters.
% Main predicate to compute the total number of letters delivered over the three days
% Params: TotalLetters
calculate_total_letters(TotalLetters) :-
total_letters_delivered(TotalLetters).
% Query predicate to get the total number of letters delivered over the three days
query(TotalLetters) :-
calculate_total_letters(TotalLetters).
% Uncomment the following line to run the query
% query(TotalLetters).
%query(TotalLetters).