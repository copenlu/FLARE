% Define a structure for dates
date(MM, DD, YYYY).
% Define the number of days in each month
days_in_month(1, 31).  % January
days_in_month(2, 28).  % February (non-leap year)
days_in_month(2, 29).  % February (leap year)
days_in_month(3, 31).  % March
days_in_month(4, 30).  % April
days_in_month(5, 31).  % May
days_in_month(6, 30).  % June
days_in_month(7, 31).  % July
days_in_month(8, 31).  % August
days_in_month(9, 30).  % September
days_in_month(10, 31). % October
days_in_month(11, 30). % November
days_in_month(12, 31). % December
% Check if a year is a leap year
is_leap_year(Year) :-
(Year mod 4 =:= 0, Year mod 100 =\= 0) ; (Year mod 400 =:= 0).
% Increment the day within the same month
increment_day(date(MM, DD, YYYY), NewDate) :-
days_in_month(MM, DaysInMonth),
(is_leap_year(YYYY), MM = 2 -> TrueDaysInMonth = 29; TrueDaysInMonth = DaysInMonth),
NewDD is DD + 1,
(NewDD =< TrueDaysInMonth -> NewDate = date(MM, NewDD, YYYY) ; increment_month(date(MM, DD, YYYY), NewDate)).
% Handle month-end transition
increment_month(date(MM, DD, YYYY), NewDate) :-
NewMM is MM + 1,
(NewMM =< 12 -> NewDate = date(NewMM, 1, YYYY) ; increment_year(date(MM, DD, YYYY), NewDate)).
% Handle year-end transition
increment_year(date(MM, DD, YYYY), NewDate) :-
NewYYYY is YYYY + 1,
NewDate = date(1, 1, NewYYYY).
% Query to find the date 24 hours later from 04/19/1969
query :-
StartDate = date(4, 19, 1969),
increment_day(StartDate, NewDate),
format("The date 24 hours later is ~w/~w/~w~n", [MM, DD, YYYY]),
NewDate = date(MM, DD, YYYY).
% Uncomment the line below to run the query
% query.
% query.