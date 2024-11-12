% Define the earnings per task for Jairus and Jenny
earnings_jairus(0.8).  % Assumed earnings per task for Jairus
earnings_jenny(0.5).  % Assumed earnings per task for Jenny
% Calculate the total earnings for Jairus after completing 20 tasks
total_earnings_jairus(TotalEarningsJairus) :-
earnings_jairus(EarningsJairus),
TotalTasks = 20,
TotalEarningsJairus is EarningsJairus * TotalTasks.
% Calculate the total earnings for Jenny after completing 20 tasks
total_earnings_jenny(TotalEarningsJenny) :-
earnings_jenny(EarningsJenny),
TotalTasks = 20,
TotalEarningsJenny is EarningsJenny * TotalTasks.
% Calculate the difference in earnings between Jairus and Jenny
difference_earnings(Difference) :-
total_earnings_jairus(TotalEarningsJairus),
total_earnings_jenny(TotalEarningsJenny),
Difference is TotalEarningsJairus - TotalEarningsJenny.
% Query predicate to find the difference in earnings between Jairus and Jenny
query(Difference) :-
difference_earnings(Difference).
% Uncomment the line below to run the query
% ?- query(Difference).
%query(Difference).