% Define predicates for calculating times
jon_total_time(TotalTime) :- TotalTime is 40 + 80 + 50.
james_adjusted_time_swim(AdjustedTime) :- jon_total_time(JonTime), AdjustedTime is JonTime * 0.9.
james_adjusted_time_bike(AdjustedTime) :- jon_total_time(JonTime), AdjustedTime is JonTime + 5.
james_total_time(TotalTime) :- james_adjusted_time_swim(SwimTime), james_adjusted_time_bike(BikeTime), TotalTime is SwimTime + BikeTime + 50.
% Define predicate to find James' time for the run
james_run_time(RunTime) :- jon_total_time(JonTime), james_total_time(JamesTime), RunTime is JamesTime - JonTime + 50.
% Query to find James' time for the run
query(RunTime) :- james_run_time(RunTime).
% Uncomment the following line to run the query
% ?- query(RunTime).
%query(RunTime).