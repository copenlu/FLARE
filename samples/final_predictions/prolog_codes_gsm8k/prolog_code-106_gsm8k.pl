% Define the time taken to cover 3 miles
time_to_cover_3_miles(10).
% Calculate the total time to cover the city
calculate_time_to_cover_city(TotalDistance, TotalTime) :-
SegmentDistance is 3,
time_to_cover_3_miles(TimePerSegment),
NumSegments is TotalDistance / SegmentDistance,
TotalTime is NumSegments * TimePerSegment.
% Query to calculate how many minutes it will take for the fog bank to cover the whole city
query(TotalTime) :-
calculate_time_to_cover_city(42, TotalTime).
% Uncomment the following line to run the query and calculate the total time
% ?- query(TotalTime).
%query(TotalTime).