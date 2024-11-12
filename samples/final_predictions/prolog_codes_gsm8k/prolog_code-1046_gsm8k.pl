% Define the number of questions in each category
easy_questions(24).
average_questions(18).
difficult_questions(18).
% Define Aries' success rates
success_rate_easy(0.75).
success_rate_average(0.50).
success_rate_difficult(0.50).
% Calculate the points Aries is sure to get for each type of question
points_easy(Points) :-
easy_questions(Easy),
success_rate_easy(SuccessRate),
Points is Easy * SuccessRate.
points_average(Points) :-
average_questions(Average),
success_rate_average(SuccessRate),
Points is Average * SuccessRate.
points_difficult(Points) :-
difficult_questions(Difficult),
success_rate_difficult(SuccessRate),
Points is Difficult * SuccessRate.
% Calculate the total points Aries is sure to get
total_points(Total) :-
points_easy(EasyPoints),
points_average(AveragePoints),
points_difficult(DifficultPoints),
Total is EasyPoints + AveragePoints + DifficultPoints.
% Query predicate to find the total points Aries is sure to get
query(TotalPoints) :-
total_points(TotalPoints).
% Uncomment the line below to run the query
% query(TotalPoints).
%query(TotalPoints).