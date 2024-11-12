:- use_module(library(date)).
% Define a structure for dates
date(MM, DD, YYYY).
% Calculate the date of Thanksgiving for a given year
thanksgiving_date(Year, Date) :-
% Thanksgiving is the fourth Thursday in November
Date = date(11, Day, Year),
% Find the first day of November
day_of_the_week(date(Year, 11, 1), FirstDayOfWeek),
% Calculate which day is the first Thursday
FirstThursday is (5 - FirstDayOfWeek) mod 7 + 1,
% Thanksgiving is three weeks after the first Thursday
Day is FirstThursday + 21.
% Subtract one month from a given date
subtract_one_month(date(MM, DD, YYYY), NewDate) :-
( MM = 1 -> % If January, wrap around to the previous year
NewMM is 12,
NewYYYY is YYYY - 1
; % Otherwise, just decrement the month
NewMM is MM - 1,
NewYYYY is YYYY
),
% Handle day overflow by checking the number of days in the new month
days_in_month(NewMM, NewYYYY, MaxDays),
NewDD is min(DD, MaxDays),
NewDate = date(NewMM, NewDD, NewYYYY).
% Helper predicate to determine the number of days in a given month and year
days_in_month(2, Year, Days) :- % February, check for leap year
( leap_year(Year) -> Days = 29 ; Days = 28 ).
days_in_month(Month, _, Days) :-
member(Month-Days, [1-31, 3-31, 4-30, 5-31, 6-30, 7-31, 8-31, 9-30, 10-31, 11-30, 12-31]).
% Check if a year is a leap year
leap_year(Year) :-
( Year mod 4 =:= 0, Year mod 100 =\= 0 ; Year mod 400 =:= 0 ).
% Query to find the date one month before Thanksgiving in 2001
query :-
thanksgiving_date(2001, ThanksgivingDate),
subtract_one_month(ThanksgivingDate, DateOneMonthBefore),
format('One month before Thanksgiving 2001 is: ~w/~w/~w~n', [MM, DD, YYYY]),
DateOneMonthBefore = date(MM, DD, YYYY).
% Uncomment the following line to run the query
% query.
% query.