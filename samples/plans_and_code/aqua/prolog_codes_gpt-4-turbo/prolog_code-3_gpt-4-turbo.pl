% Define the predicate to calculate the adjusted average
adjusted_average(X, Y, Z, Result) :-
% Calculate the total score of the class
TotalScore is Y * Z,
% Calculate the sum of the highest and lowest scores
SumHighLow is 2 * X,
% Calculate the adjusted total score by subtracting the sum of the highest and lowest scores
AdjustedScore is TotalScore - SumHighLow,
% Calculate the number of students excluding the highest and lowest
StudentsAdjusted is Z - 2,
% Calculate the adjusted average score
Result is AdjustedScore / StudentsAdjusted.
% Example query to run the program with specific values for X, Y, and Z
query(Result) :-
% Example values for X, Y, Z
X = 50,  % Assumed average of highest and lowest scores
Y = 70,  % Assumed average score of the entire class
Z = 10,  % Assumed total number of students
% Call the adjusted_average predicate
adjusted_average(X, Y, Z, Result).
% Uncomment the line below to run the query and get the result
% ?- query(Result).
%query(Result).