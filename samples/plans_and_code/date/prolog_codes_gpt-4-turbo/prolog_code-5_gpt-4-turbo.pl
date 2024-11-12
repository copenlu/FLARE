% Define a structure for dates
date(MM, DD, YYYY).
% Define the number of days in each month
days_in_month(1, 31). % January
days_in_month(2, 28). % February (non-leap year)
days_in_month(2, 29). % February (leap year)
days_in_month(3, 31). % March
days_in_month(4, 30). % April
days_in_month(5, 31). % May
days_in_month(6, 30). % June
days_in_month(7, 31). % July
days_in_month(8, 31). % August
days_in_month(9, 30). % September
days_in_month(10, 31). % October
days_in_month(11, 30). % November
days_in_month(12, 31). % December
% Check if a year is a leap year
is_leap_year(Year) :-
(Year mod 4 =:= 0, Year mod 100 =\= 0) ; (Year mod 400 =:= 0).
% Increment the date by one day
increment_date(date(MM, DD, YYYY), NewDate) :-
days_in_month(MM, Days),
(   DD < Days
->  NewDD is DD + 1,
NewDate = date(MM, NewDD, YYYY)
;   MM =:= 12
->  NewDate = date(1, 1, YYYY + 1)
;   NewMM is MM + 1,
NewDate = date(NewMM, 1, YYYY)
).
% Handle February in leap years
increment_date(date(2, 28, YYYY), NewDate) :-
is_leap_year(YYYY),
NewDate = date(2, 29, YYYY).
% Calculate date after N days
date_after_days(date(MM, DD, YYYY), 0, date(MM, DD, YYYY)).
date_after_days(Date, N, NewDate) :-
N > 0,
increment_date(Date, NextDate),
N1 is N - 1,
date_after_days(NextDate, N1, NewDate).
% Define the query to find the date tomorrow given the date a week ago
query :-
WeekAgoDate = date(9, 1, 2021), % Date a week ago
date_after_days(WeekAgoDate, 7, TodayDate), % Calculate today's date
increment_date(TodayDate, TomorrowDate), % Calculate tomorrow's date
format('Tomorrow\'s date is ~w/~w/~w~n', [MM, DD, YYYY]),
TomorrowDate = date(MM, DD, YYYY).
% Uncomment the line below to run the query
% query.
% query.