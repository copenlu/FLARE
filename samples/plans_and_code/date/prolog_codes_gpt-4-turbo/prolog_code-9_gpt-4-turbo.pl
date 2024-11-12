% Define a structure for dates
date(MM, DD, YYYY).
% Define days of the week as facts
day_of_week(monday).
day_of_week(tuesday).
day_of_week(wednesday).
day_of_week(thursday).
day_of_week(friday).
day_of_week(saturday).
day_of_week(sunday).
% Mapping of days to their numeric counterparts
day_number(monday, 1).
day_number(tuesday, 2).
day_number(wednesday, 3).
day_number(thursday, 4).
day_number(friday, 5).
day_number(saturday, 6).
day_number(sunday, 7).
% Known starting point: January 1, 2019 is a Tuesday
known_date(date(1, 1, 2019), tuesday).
% Calculate the day of the week for any given date in January 2019
day_of_week_in_2019(Day, DayOfWeek) :-
known_date(date(1, 1, 2019), KnownDayOfWeek),
day_number(KnownDayOfWeek, KnownDayNum),
day_number(DayOfWeek, DayNum),
DayDiff is (Day - 1) mod 7,
DayNum is (KnownDayNum + DayDiff - 1) mod 7 + 1.
% Find the first Monday of January 2019
find_first_monday(Day) :-
between(1, 31, Day),  % January has 31 days
day_of_week_in_2019(Day, monday).
% Query to find and print the first Monday of January 2019
query :-
find_first_monday(Day),
format('The first Monday of January 2019 is on 01/~|~`0t~d~2+/2019', [Day]),
nl.
% Uncomment the line below to run the query
% query.
% query.