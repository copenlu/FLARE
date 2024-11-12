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
% Adjust February days for leap years
days_in_month(2, 29, Year) :- is_leap_year(Year), !.
days_in_month(Month, Days, Year) :- days_in_month(Month, Days), \+ is_leap_year(Year).
% Subtract a day, considering month and year transitions
subtract_day(date(MM, 1, YYYY), date(NewMM, NewDD, NewYYYY)) :-
MM =:= 1, !, % January, so we need to go back to the previous year
NewMM = 12,
NewYYYY is YYYY - 1,
days_in_month(NewMM, NewDD, NewYYYY).
subtract_day(date(MM, 1, YYYY), date(NewMM, NewDD, YYYY)) :-
MM > 1,
NewMM is MM - 1,
days_in_month(NewMM, NewDD, YYYY).
subtract_day(date(MM, DD, YYYY), date(MM, NewDD, YYYY)) :-
DD > 1,
NewDD is DD - 1.
% Recursive rule to subtract multiple days
subtract_days(Date, 0, Date).
subtract_days(Date, NumDays, ResultDate) :-
NumDays > 0,
subtract_day(Date, NewDate),
NewNumDays is NumDays - 1,
subtract_days(NewDate, NewNumDays, ResultDate).
% Query to find the date 10 days before June 2, 1943
query :-
subtract_days(date(6, 2, 1943), 10, ResultDate),
format('The date 10 days ago was: ~w/~w/~w~n', [MM, DD, YYYY]),
ResultDate = date(MM, DD, YYYY).
% Uncomment the line below to run the query
% query.
% query.