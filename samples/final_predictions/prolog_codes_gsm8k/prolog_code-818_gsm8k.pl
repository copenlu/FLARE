% Define Billy's initial rate and raises
initial_rate(billy, 10).
raise1(billy, 0.50).
raise2(billy, 1.00).
% Calculate total earnings for Billy after a certain number of hours
total_earnings(billy, Hours, Total) :-
initial_rate(billy, InitialRate),
raise1(billy, Raise1),
raise2(billy, Raise2),
(   Hours =< 160 -> Total is Hours * InitialRate;
Hours =< 320 -> Total is 160 * InitialRate + (Hours - 160) * (InitialRate + Raise1);
Total is 160 * InitialRate + 160 * (InitialRate + Raise1) + (Hours - 320) * (InitialRate + Raise1 + Raise2)
).
% Calculate Sally's starting salary and total earnings after a certain number of hours
total_earnings(sally, Hours, Total) :-
initial_rate(billy, InitialRate),
StartingSalary is InitialRate + 0.50,
Total is Hours * StartingSalary.
% Calculate the difference in earnings between Billy and Sally after a certain number of hours
difference_in_earnings(Hours, Difference) :-
total_earnings(billy, Hours, BillyEarnings),
total_earnings(sally, Hours, SallyEarnings),
Difference is BillyEarnings - SallyEarnings.
% Query to calculate the difference in earnings between Billy and Sally after 20 hours of work
query(Difference) :-
difference_in_earnings(20, Difference).
% Uncomment the following line to run the query and calculate the difference in earnings
% ?- query(Difference).
%query(Difference).