% Define the predicate to calculate the total number of letters in the full alphabet written twice
full_alphabet_letters(Total) :-
Total is 26 * 2.
% Define the predicate to calculate the total number of letters in half of the alphabet written once
half_alphabet_letters(Total) :-
Total is 13.
% Define the predicate to calculate the total number of letters Elise has written in her exercise
total_letters_written(Total) :-
full_alphabet_letters(Full),  % Total letters in full alphabet written twice
half_alphabet_letters(Half),  % Total letters in half of the alphabet written once
Total is Full + Half + Full + Half.  % Total letters written in the exercise
% Define the predicate to calculate the total number of letters Elise has written in her writing exercise
elise_writing_exercise(TotalLetters) :-
total_letters_written(TotalLetters).
% Query predicate to run the program and get the result
query(TotalLetters) :-
elise_writing_exercise(TotalLetters).
% Uncomment the following line to run the query
% ?- query(TotalLetters).
%query(TotalLetters).