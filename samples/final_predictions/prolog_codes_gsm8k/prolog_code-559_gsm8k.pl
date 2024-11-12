% Define the daily_distance predicate which calculates the round trip distance Jeff walks each day
daily_distance(6).  % Assumed round trip distance Jeff walks each day is 6 miles
% Define the weekly_distance predicate which calculates the total distance Jeff walks in a week
weekly_distance(TotalDistance) :-
daily_distance(DailyDistance),  % Get the daily round trip distance
TotalDistance is DailyDistance * 5.  % Calculate total distance in a week (5 working days)
% Query predicate to run the program and get the result
query(TotalDistance) :-
weekly_distance(TotalDistance).
% Uncomment the following line to run the query
% ?- query(TotalDistance).
%query(TotalDistance).