% Define Emily's rates
peeling_rate(6). % 6 shrimp per minute
sauteing_rate(30, 10). % 30 shrimp in 10 minutes
% Calculate time to peel and cook a certain number of shrimp
time_to_peel_and_cook(TotalShrimp, Time) :-
peeling_rate(PeelRate),
sauteing_rate(SauteRate, SauteTime),
TotalShrimp =:= SauteRate, % Ensure the total shrimp matches the sauteing rate
Time is TotalShrimp / PeelRate + SauteTime.
% Calculate time to peel and cook 90 shrimp
time_to_peel_and_cook(90, Time).
% Query predicate to find the time needed to peel and cook 90 shrimp
query(Time) :-
time_to_peel_and_cook(90, Time).
% Uncomment the line below to run the query
% query(Time).
%query(Time).