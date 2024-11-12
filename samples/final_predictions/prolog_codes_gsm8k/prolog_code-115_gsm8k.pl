% Define constants
teachers(4).
lessons_per_teacher(2).
cleanings_per_lesson(3).
% Calculate the total number of cleanings in a day
total_cleanings_per_day(TotalCleanings) :-
teachers(Teachers),
lessons_per_teacher(LessonsPerTeacher),
cleanings_per_lesson(CleaningsPerLesson),
TotalLessons is Teachers * LessonsPerTeacher,
TotalCleanings is TotalLessons * CleaningsPerLesson.
% Query to calculate the total number of times the whiteboard is cleaned in a day
query(TotalCleanings) :-
total_cleanings_per_day(TotalCleanings).
% Uncomment the following line to run the query and calculate the total cleanings per day
% ?- query(TotalCleanings).
%query(TotalCleanings).