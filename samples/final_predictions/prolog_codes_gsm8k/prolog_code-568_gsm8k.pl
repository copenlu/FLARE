% Define the swimming time per mile for cold and warm days
swimming_time(cold, 16).  % Assumed swimming time per mile on a cold day
swimming_time(warm, 34).  % Assumed swimming time per mile on a warm day
% Define the total time taken to swim a certain distance
total_time(Distance, Temperature, TotalTime) :-
swimming_time(Temperature, TimePerMile),
TotalTime is TimePerMile * Distance.
% Define the time difference between swimming 3 miles on a hot day and a cold day
time_difference(Difference) :-
total_time(3, warm, TotalTimeWarm),
total_time(3, cold, TotalTimeCold),
Difference is TotalTimeWarm - TotalTimeCold.
% Query predicate to run the program and get the result
query(Difference) :-
time_difference(Difference).
% Uncomment the following line to run the query
% ?- query(Difference).
%query(Difference).