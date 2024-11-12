% Define a predicate to calculate the average of a list of test scores
average_grade(TestScores, Average) :-
sum_list(TestScores, Sum),
length(TestScores, NumTests),
Average is Sum / NumTests.
% Define a predicate to check if the average grade meets the requirement
check_grade(Average, Result) :-
(Average >= 80 -> Result = 'Wilson can have the car for the weekend'; Result = 'Wilson cannot have the car for the weekend').
% Test scores given: 65, 94, 81, 86, 74
test_scores([65, 94, 81, 86, 74]).
% Query to calculate Wilson's current math grade and check if he can have the car for the weekend
wilson_math_grade(Result) :-
test_scores(TestScores),
average_grade(TestScores, Average),
check_grade(Average, Result).
% Uncomment the following line to run the query
% ?- wilson_math_grade(Result).
%query.