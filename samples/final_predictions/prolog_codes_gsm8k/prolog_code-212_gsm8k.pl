% Define the distance biked in the first four weeks
distance_first_period(TotalDistance) :-
TotalDistance is 5 * 25 * 4.
% Define the distance biked in the following three weeks
distance_second_period(TotalDistance) :-
TotalDistance is 2 * 60 * 3.
% Calculate the total distance biked by summing distances from both periods
total_distance_biked(TotalDistance) :-
distance_first_period(Distance1),
distance_second_period(Distance2),
TotalDistance is Distance1 + Distance2.
% Query predicate to run the program and get the result
query(TotalDistance) :-
total_distance_biked(TotalDistance).
% Uncomment the following line to run the query
% ?- query(TotalDistance).
%query(TotalDistance).