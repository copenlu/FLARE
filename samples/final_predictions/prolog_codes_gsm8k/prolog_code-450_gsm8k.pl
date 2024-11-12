% Define the rule for calculating total time for Wayne
total_time_wayne(4).
% Define the rule for calculating total time for Bernadette
total_time_bernadette(Time) :- total_time_wayne(WayneTime), Time is WayneTime * 4.
% Define the rule for calculating the time difference
time_difference(Difference) :- total_time_bernadette(BernadetteTime), Difference is BernadetteTime - 5.
% Query predicate to find out how much earlier Bernadette should leave than Wayne
query(Difference) :-
time_difference(Difference).
% Uncomment the following line to run the query
% ?- query(Difference).
%query(Difference).