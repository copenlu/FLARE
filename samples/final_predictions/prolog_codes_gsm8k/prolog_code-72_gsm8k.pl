% Define the rule to calculate the total income Judy makes in one week
calculate_weekly_income(TotalIncome) :-
WeekdayClasses = 5,             % Assumed atom/predicate: Number of dance classes on weekdays
SaturdayClasses = 8,            % Assumed atom/predicate: Number of dance classes on Saturday
StudentsPerClass = 15,          % Assumed atom/predicate: Number of students in each class
FeePerStudent = 15.00,          % Assumed atom/predicate: Fee charged per student
TotalClasses is WeekdayClasses + SaturdayClasses,
TotalStudents is TotalClasses * StudentsPerClass,
TotalIncome is TotalStudents * FeePerStudent.
% Query to find the total income Judy makes in one week
query_weekly_income(TotalIncome) :-
calculate_weekly_income(TotalIncome).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_weekly_income(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).