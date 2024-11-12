% Define a structure for dates
date(MM, DD, YYYY).
% Define the number of days in each month
month_days(1, 31).  % January
month_days(2, 28).  % February (non-leap year)
month_days(2, 29).  % February (leap year)
month_days(3, 31).  % March
month_days(4, 30).  % April
month_days(5, 31).  % May
month_days(6, 30).  % June
month_days(7, 31).  % July
month_days(8, 31).  % August
month_days(9, 30).  % September
month_days(10, 31). % October
month_days(11, 30). % November
month_days(12, 31). % December
% Check if a year is a leap year
is_leap_year(Year) :-
(Year mod 4 =:= 0, Year mod 100 =\= 0) ; (Year mod 400 =:= 0).
% Increment the day, considering month and year boundaries
increment_day(date(MM, DD, YYYY), NewDate) :-
month_days(MM, DaysInMonth),
(   is_leap_year(YYYY), MM = 2
->  ActualDaysInMonth is DaysInMonth + 1
;   ActualDaysInMonth = DaysInMonth
),
(   DD < ActualDaysInMonth
->  NextDay is DD + 1,
NewDate = date(MM, NextDay, YYYY)
;   (   MM = 12
->  NewDate = date(1, 1, YYYY + 1)
;   NextMonth is MM + 1,
NewDate = date(NextMonth, 1, YYYY)
)
).
% Add a number of days to a date
add_days(Date, 0, Date).
add_days(Date, Days, NewDate) :-
Days > 0,
increment_day(Date, NextDate),
RemainingDays is Days - 1,
add_days(NextDate, RemainingDays, NewDate).
% Query to find the date one week from December 30, 2014
query :-
StartDate = date(12, 30, 2014),
add_days(StartDate, 7, ResultDate),
format('One week from December 30, 2014 is ~w/~w/~w', [MM, DD, YYYY]),
ResultDate = date(MM, DD, YYYY).
% Uncomment the line below to run the query
 :- query.
%query.