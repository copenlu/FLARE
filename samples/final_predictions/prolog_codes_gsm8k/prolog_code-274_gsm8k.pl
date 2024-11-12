% Predicate to calculate the time taken to heat the oil to 400 degrees
% Params: TimeTo300, TimeTo400
heat_to_400(TimeTo300, TimeTo400) :-
TimeTo400 is TimeTo300 + (0.4 * TimeTo300).
% Predicate to calculate the time taken to warm up the oil
% Params: TimeTo400, TimeToWarmUp
warm_up_oil(TimeTo400, TimeToWarmUp) :-
TimeToWarmUp is TimeTo400 - 5.
% Predicate to calculate the total time taken to cook the chicken
% Params: TimeTo300, TimeTo400, TimeToWarmUp, TotalTime
total_time_to_cook(TimeTo300, TimeTo400, TimeToWarmUp, TotalTime) :-
TotalTime is TimeTo300 + TimeToWarmUp.
% Main predicate to compute the total time taken to cook the chicken
% Params: TotalTime
calculate_total_time(TotalTime) :-
% Constants
TimeTo300 = 20,  % Time taken to heat to 300 degrees in minutes
% Calculate time to heat to 400 degrees
heat_to_400(TimeTo300, TimeTo400),
% Calculate time to warm up the oil
warm_up_oil(TimeTo400, TimeToWarmUp),
% Calculate total time to cook the chicken
total_time_to_cook(TimeTo300, TimeTo400, TimeToWarmUp, TotalTime).
% Query predicate to get the total time taken to cook the chicken
query(TotalTime) :-
calculate_total_time(TotalTime).
% Uncomment the following line to run the query
% query(TotalTime).
%query(TotalTime).