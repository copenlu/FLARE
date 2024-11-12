% Define a structure for dates
date(MM, DD, YYYY).
% Check if a year is a leap year
is_leap_year(Year) :-
(Year mod 4 =:= 0, Year mod 100 =\= 0) ; (Year mod 400 =:= 0).
% Number of days in each month
days_in_month(1, 31). % January
days_in_month(2, 28). % February (non-leap year)
days_in_month(2, 29) :- is_leap_year(Year), !. % February (leap year)
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
% Calculate the next day
next_day(date(12, 31, Year), date(1, 1, NextYear)) :-
NextYear is Year + 1.
next_day(date(Month, Day, Year), date(NextMonth, 1, Year)) :-
days_in_month(Month, Day),
NextMonth is Month + 1.
next_day(date(Month, Day, Year), date(Month, NextDay, Year)) :-
days_in_month(Month, NumDays),
Day < NumDays,
NextDay is Day + 1.
% Query to find the next day given a specific date
query :-
next_day(date(12, 31, 1929), NextDate),
format('The date today is ~w~n', [NextDate]).
% Uncomment the line below to run the query
% query.
% query.