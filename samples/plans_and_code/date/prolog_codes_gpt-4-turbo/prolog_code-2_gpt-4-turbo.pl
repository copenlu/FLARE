% Define the number of days in each month for non-leap years
days_in_month(1, 31).  % January
days_in_month(2, 28).  % February
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
% Adjust the number of days in February for leap years
adjusted_days_in_month(2, Year, 29) :- is_leap_year(Year), !.
adjusted_days_in_month(Month, Year, Days) :- days_in_month(Month, Days).
% Calculate tomorrow's date
tomorrow(date(MM, DD, YYYY), date(NewMM, NewDD, NewYYYY)) :-
adjusted_days_in_month(MM, YYYY, DaysInMonth),
(DD < DaysInMonth -> (NewDD is DD + 1, NewMM = MM, NewYYYY = YYYY) ; next_day_first_of_month(date(MM, DD, YYYY), date(NewMM, NewDD, NewYYYY))).
% Handle end of month transitions
next_day_first_of_month(date(12, 31, YYYY), date(1, 1, NewYYYY)) :- NewYYYY is YYYY + 1.
next_day_first_of_month(date(MM, DD, YYYY), date(NewMM, 1, YYYY)) :-
DD =:= 31,
MM < 12,
NewMM is MM + 1.
% Query to find the date after April 30, 2021
query :-
tomorrow(date(4, 30, 2021), Tomorrow),
format("Tomorrow's date is ~w/~w/~w", [MM, DD, YYYY]),
nl.
% Uncomment the line below to run the query
% query.
% query.