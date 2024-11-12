% Define the arrival and departure times for each train
arrival_departure(1, 10, 20).
arrival_departure(2, 40, 5).
arrival_departure(3, 95, 0).
arrival_departure(4, 115, 0).
% Calculate the waiting time for Paul
waiting_time_for_paul(WaitingTime) :-
arrival_departure(3, ArrivalTime3, _),  % Get the arrival time of the third train
arrival_departure(4, ArrivalTime4, _),  % Get the arrival time of the fourth train
WaitingTime is ArrivalTime4 - ArrivalTime3.  % Calculate the waiting time
% Query to find the total waiting time for Paul
query_waiting_time_for_paul(WaitingTime) :-
waiting_time_for_paul(WaitingTime).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_waiting_time_for_paul(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).