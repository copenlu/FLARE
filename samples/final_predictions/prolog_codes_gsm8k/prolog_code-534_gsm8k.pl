% Define the number of problems Chris completes on Monday
monday_problems(12).
% Define the number of problems Chris completes on Tuesday
tuesday_problems(TuesdayProblems) :-
monday_problems(MondayProblems),
TuesdayProblems is 3 * MondayProblems.
% Define the number of problems Chris completes on Wednesday
wednesday_problems(WednesdayProblems) :-
tuesday_problems(TuesdayProblems),
MondayProblems = 12,  % Assumed atom/predicate for Monday's problems
WednesdayProblems is (100 - MondayProblems - TuesdayProblems) / 4.
% Define the number of problems Chris has left to complete on Thursday
thursday_problems(ThursdayProblems) :-
wednesday_problems(WednesdayProblems),
monday_problems(MondayProblems),
tuesday_problems(TuesdayProblems),
ThursdayProblems is 100 - MondayProblems - TuesdayProblems - WednesdayProblems.
% Query predicate to run the program and get the result
query(ProblemsLeft) :-
thursday_problems(ProblemsLeft).
% Uncomment the following line to run the query
% ?- query(ProblemsLeft).
%query(ProblemsLeft).