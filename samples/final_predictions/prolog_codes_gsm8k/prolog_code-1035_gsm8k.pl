% Define facts for the number of laps each person can run
laps(bethany, 10).
laps(trey, 14).
laps(shaelyn, 7).
laps(quinn, 5).
% Define a rule to calculate the difference in laps between two individuals
difference_laps(Person1, Person2, Difference) :-
laps(Person1, Laps1),
laps(Person2, Laps2),
Difference is Laps1 - Laps2.
% Calculate the difference in laps between Bethany and Quinn
query(Difference) :-
difference_laps(bethany, quinn, Difference).
% Uncomment the line below to run the query
% query(Difference).
%query(Difference).