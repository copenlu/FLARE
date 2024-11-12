% Define the rule to calculate the total questions Audrey needs to answer correctly
total_questions_needed(TotalQuestions) :-
TotalQuestions is round(0.7 * (70 + 40)).
% Define the rule to calculate the questions Audrey answered correctly on the first test
questions_correct_first_test(FirstTestQuestions, FirstTestCorrect) :-
FirstTestCorrect is round(0.6 * FirstTestQuestions).
% Define the rule to calculate the questions needed on the second test
questions_needed_second_test(TotalQuestions, FirstTestCorrect, SecondTestQuestions, SecondTestCorrect) :-
SecondTestQuestions is 40,
SecondTestCorrect is TotalQuestions - FirstTestCorrect.
% Query to find the number of questions Audrey needs to get right on the second test
query_questions_needed_second_test(SecondTestCorrect) :-
total_questions_needed(TotalQuestions),
questions_correct_first_test(70, FirstTestCorrect),
questions_needed_second_test(TotalQuestions, FirstTestCorrect, 40, SecondTestCorrect).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_questions_needed_second_test(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).