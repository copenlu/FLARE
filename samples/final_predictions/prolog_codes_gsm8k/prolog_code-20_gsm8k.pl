% Define the total time taken for the first 6 miles
total_time_first_6_miles(Time1, Time2, TotalTimeFirst6) :-
TotalTimeFirst6 is Time1 + Time2.
% Define the remaining time for the remaining 6 miles
remaining_time_total_trail(TotalTimeFirst6, RemainingTime) :-
RemainingTime is 2 - TotalTimeFirst6.
% Define the speed needed to walk the remaining 6 miles
required_speed(RemainingDistance, RemainingTime, Speed) :-
Speed is RemainingDistance / RemainingTime.
% Given values
Time1 = 1, Time2 = 1, RemainingDistance = 6.
% Calculate the required speed
calculate_required_speed(Speed) :-
total_time_first_6_miles(Time1, Time2, TotalTimeFirst6),
remaining_time_total_trail(TotalTimeFirst6, RemainingTime),
required_speed(RemainingDistance, RemainingTime, Speed).
% Query to find the required speed for Marissa to achieve an average speed of 4 miles per hour
query(Speed) :-
calculate_required_speed(Speed).
% Uncomment the following line to run the query
% ?- query(Speed).
%query(Speed).