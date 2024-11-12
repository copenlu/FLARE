% Define the total number of letters and the range of numbers
total_letters(26).  % Total letters in the English alphabet
total_numbers(10).  % Numbers from 0 to 9
% Calculate combinations of 2 distinct letters from 26 available
distinct_letter_combinations(Result) :-
total_letters(TotalLetters),
Result is TotalLetters * (TotalLetters - 1).
% Calculate combinations of 2 numbers where each can be from 0 to 9
number_combinations(Result) :-
total_numbers(TotalNumbers),
Result is TotalNumbers * TotalNumbers.
% Calculate the total number of distinct bike numbers
total_bike_numbers(Total) :-
distinct_letter_combinations(LetterCombinations),
number_combinations(NumberCombinations),
Total is LetterCombinations * NumberCombinations.
% Predicate to query the total number of distinct bike numbers
query(Total) :-
total_bike_numbers(Total).
% Uncomment the line below to run the query and get the result
% ?- query(Result).
%query(Result).