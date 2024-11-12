% Define marriages
married(john, cynthia, date(1962, 8, 23), date(1968, 11, 8)).
% Calculate the number of years married
years_married(StartYear, StartMonth, StartDay, EndYear, EndMonth, EndDay, Years) :-
Years is EndYear - StartYear.
% Check for silver anniversary
silver_anniversary(Husband, Wife) :-
married(Husband, Wife, StartDate, EndDate),
StartDate = date(SY, SM, SD),
EndDate = date(EY, EM, ED),
years_married(SY, SM, SD, EY, EM, ED, Years),
Years >= 25.
% User query
check_silver_anniversary(Husband, Wife) :-
(   silver_anniversary(Husband, Wife)
->  true
;   false).
% Query predicate
query :- check_silver_anniversary(john, cynthia).
%query.