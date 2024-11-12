% Define the predicate to calculate the total time spent in regular classes per day
regular_class_time(TotalPeriods, PeriodDuration, TotalTime) :-
TotalTime is TotalPeriods * PeriodDuration.
% Define the predicate to calculate the total time spent in extra classes per day
extra_class_time(ExtraClasses, ClassDuration, TotalTime) :-
TotalTime is ExtraClasses * ClassDuration.
% Define the predicate to calculate the total time spent on extra learning on weekends
extra_learning_time(WeeklyMinutes, ExtraLearningTime) :-
ExtraLearningTime is WeeklyMinutes / 16.
% Define the predicate to calculate the total time John spends learning in a week
total_learning_time(TotalPeriods, PeriodDuration, ExtraClasses, ClassDuration, WeeklyMinutes, TotalTime) :-
regular_class_time(TotalPeriods, PeriodDuration, RegularClassTime),
extra_class_time(ExtraClasses, ClassDuration, ExtraClassTime),
extra_learning_time(WeeklyMinutes, ExtraLearningTime),
TotalTime is (RegularClassTime + ExtraClassTime + ExtraLearningTime) * 5.  % Multiply by 5 for 5 days a week
% Query to find the total time John spends learning in a week
query(TotalTime) :-
total_learning_time(6, 40, 2, 40, 5*60*6, TotalTime).  % 5 days * 60 minutes * 6 periods
% Uncomment the following line to run the query
% ?- query(TotalTime).
%query(TotalTime).