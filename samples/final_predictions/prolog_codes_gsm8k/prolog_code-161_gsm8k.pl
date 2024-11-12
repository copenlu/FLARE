% Define the total distance run by Blake
total_distance_blake(Times, Distance) :-
Distance is Times * 100 * 2. % 100 yards for each back and forth run
% Define the total distance run by Kelly
total_distance_kelly(Times, Distance) :-
Distance is Times * (40 + 40) * 2. % 40 yards to the 40-yard line and back
% Define the winner's advantage
winner_advantage(BlakeDistance, KellyDistance, Advantage) :-
Advantage is abs(BlakeDistance - KellyDistance).
% Calculate the winner's advantage and return the result
query(Advantage) :-
total_distance_blake(15, BlakeDistance), % Blake runs back and forth 15 times
total_distance_kelly(34, KellyDistance), % Kelly runs to the 40-yard line and back 34 times
winner_advantage(BlakeDistance, KellyDistance, Advantage).
% Uncomment the following line to run the query and find out the winner's advantage
% ?- query(Advantage).
%query(Advantage).