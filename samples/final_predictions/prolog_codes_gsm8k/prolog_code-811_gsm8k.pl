% Define the initial number of people on the train
initial_passengers(172).
% Calculate the remaining number of passengers on the train after stops
remaining_passengers(Remaining) :-
initial_passengers(Initial),
Stop1Off = 47,
Stop1On = 13,
Stop2Off = 38,
Remaining is Initial - Stop1Off + Stop1On - Stop2Off.
% Query to calculate the number of people remaining on the train
query(Remaining) :-
remaining_passengers(Remaining).
% Uncomment the following line to run the query and calculate the remaining passengers on the train
% ?- query(Remaining).
%query(Remaining).