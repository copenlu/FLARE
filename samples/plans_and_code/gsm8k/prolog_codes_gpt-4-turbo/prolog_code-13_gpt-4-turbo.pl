% Convert months to years
convert_months_to_years(Months, Years) :-
Years is Months / 12.
% Calculate the total duration for completing all bucket list goals
total_bucket_list_duration(GettingInShape, LearningClimbing, ClimbingSummitsMonths, LearningDivingMonths, DivingCaves, TotalYears) :-
convert_months_to_years(ClimbingSummitsMonths, ClimbingSummitsYears),
convert_months_to_years(LearningDivingMonths, LearningDivingYears),
TotalYears is GettingInShape + LearningClimbing + ClimbingSummitsYears + LearningDivingYears + DivingCaves.
% Query to calculate and return the total time spent on the bucket list activities
query(TotalYears) :-
total_bucket_list_duration(2, 4, 35, 13, 2, TotalYears).
% Uncomment the following line to run the query and find out the total years spent on the bucket list activities.
% query(TotalYears).
%query(TotalYears).