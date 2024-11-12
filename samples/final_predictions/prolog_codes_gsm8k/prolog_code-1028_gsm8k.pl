% Facts
rental_cost_per_session(25).
cost_per_student_per_session(1.50).
number_of_students(10).
days_rented_per_week(3).
% Calculate total cost per session
total_cost_per_session(TotalCost) :-
rental_cost_per_session(RentalCost),
cost_per_student_per_session(CostPerStudent),
number_of_students(NumStudents),
TotalCost is RentalCost + (CostPerStudent * NumStudents).
% Calculate weekly earnings
weekly_earnings(WeeklyEarnings) :-
total_cost_per_session(TotalCost),
days_rented_per_week(DaysRented),
WeeklyEarnings is TotalCost * DaysRented.
% Calculate monthly earnings
monthly_earnings(MonthlyEarnings) :-
weekly_earnings(WeeklyEarnings),
MonthlyEarnings is WeeklyEarnings * 4.
% Query predicate to find the monthly earnings of the dance studio
query(MonthlyEarnings) :-
monthly_earnings(MonthlyEarnings).
% Uncomment the line below to run the query
% query(MonthlyEarnings).
%query(MonthlyEarnings).