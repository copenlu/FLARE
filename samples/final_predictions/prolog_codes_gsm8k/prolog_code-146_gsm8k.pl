% Define the total hours worked in a week
hours_worked_in_week(VideoGameHours, TotalWorkHours) :-
TotalWorkHours is VideoGameHours * 7.
% Define the total earnings in a week
earnings_in_week(TotalWorkHours, HourlyWage, TotalEarnings) :-
TotalEarnings is TotalWorkHours * HourlyWage.
% Calculate the total earnings for Jordan in a week if he worked instead of playing video games
calculate_weekly_earnings(TotalEarnings) :-
hours_worked_in_week(2, TotalWorkHours),  % Jordan plays video games for 2 hours per day
earnings_in_week(TotalWorkHours, 10, TotalEarnings).  % Jordan earns $10 per hour
% Query to find out Jordan's earnings in a week if he worked instead of playing video games
query(TotalEarnings) :-
calculate_weekly_earnings(TotalEarnings).
% Uncomment the following line to run the query and find out Jordan's weekly earnings
% ?- query(TotalEarnings).
%query(TotalEarnings).