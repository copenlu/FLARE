% Define a rule to calculate time taken to cover a distance at a given speed
time_to_reach_home(Distance, Speed, Time) :-
Time is Distance / Speed.
% Define the distances and speeds for Steve and Tim
distance_steve(3.0), speed_steve(440.0),
distance_tim(2.0), speed_tim(264.0).
% Calculate the time taken for Steve and Tim to reach their homes
time_to_reach_home(distance_steve, speed_steve, TimeSteve),
time_to_reach_home(distance_tim, speed_tim, TimeTim),
% Calculate the waiting time for the winner
waiting_time(TimeSteve, TimeTim, WaitingTime).
% Query to find out the waiting time for the winner
query(WaitingTime) :-
waiting_time(TimeSteve, TimeTim, WaitingTime).
% Uncomment the following line to run the query and find out the waiting time for the winner
% ?- query(WaitingTime).
%query(WaitingTime).