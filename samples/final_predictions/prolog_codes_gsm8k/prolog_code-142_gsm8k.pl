% Define a rule to calculate questions left incomplete
questions_left_incomplete(QuestionsCompleted, TotalQuestions, HoursGiven, QuestionsLeft) :-
QuestionsLeft is TotalQuestions - (QuestionsCompleted * HoursGiven).
% Calculate questions left incomplete for the first test
questions_left_incomplete(5, 75, 8, IncompleteFirstTest).
% Calculate questions left incomplete for the second test
questions_left_incomplete(5, 100, 6, IncompleteSecondTest).
% Calculate total questions left incomplete
TotalQuestionsLeft is IncompleteFirstTest + IncompleteSecondTest.
% Query to find the total number of questions left incomplete
query(TotalQuestionsLeft) :-
TotalQuestionsLeft.
% Uncomment the following line to run the query and find out the total questions left incomplete.
% ?- query(TotalQuestionsLeft).
%query(TotalQuestionsLeft).