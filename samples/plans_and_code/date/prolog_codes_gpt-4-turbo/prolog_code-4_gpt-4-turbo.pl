% Define the structure for the date
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
% Subtract a day considering month and year transitions
subtract_day(date(MM, 1, YYYY), date(NewMM, NewDD, NewYYYY)) :-
MM =:= 1, !,
NewMM = 12,
NewYYYY is YYYY - 1,
days_in_month(NewMM, NewDD).
subtract_day(date(MM, 1, YYYY), date(NewMM, NewDD, YYYY)) :-
NewMM is MM - 1,
days_in_month(NewMM, NewDD).
subtract_day(date(MM, DD, YYYY), date(MM, NewDD, YYYY)) :-
DD > 1,
NewDD is DD - 1.
% Recursive rule to subtract multiple days
subtract_days(Date, 0, Date).
subtract_days(Date, NumDays, NewDate) :-
NumDays > 0,
subtract_day(Date, TempDate),
NewNumDays is NumDays - 1,
subtract_days(TempDate, NewNumDays, NewDate).
% Query to find the date one week ago from 12/31/2020
query :-
StartDate = date(12, 31, 2020),
subtract_days(StartDate, 7, NewDate),
format('One week ago from ~w was ~w~n', [StartDate, NewDate]).
% Uncomment the line below to run the query
% query.
% query.