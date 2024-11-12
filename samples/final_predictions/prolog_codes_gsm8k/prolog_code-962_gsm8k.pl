% Define the rule to calculate the total number of letters spelled by Craig and his brother after ten rounds
total_letters_spelled(TotalLetters) :-
CraigLetters is 20 * 15, % Craig spells 20 words with 15 letters each
BrotherLetters is CraigLetters + 50, % Brother spells 50 more letters than Craig
TotalLetters is CraigLetters + BrotherLetters. % Total letters spelled by both
% Query to find the total number of letters spelled after ten rounds
query_total_letters_spelled(TotalLetters) :-
total_letters_spelled(TotalLetters).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_letters_spelled(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).