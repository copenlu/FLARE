% Define the initial number of passengers
initial_passengers(48).
% Calculate the total number of passengers who get on the bus at each stop
passengers_get_on(Off, On) :- On is 5 * Off.
passengers_get_on_second_stop(Off, On) :- On is Off - 3.
% Calculate the total number of passengers on the bus after each stop
passengers_after_first_stop(Off1, On1, Total) :- initial_passengers(Initial), Total is Initial - Off1 + On1.
passengers_after_second_stop(Off2, On2, Total) :- passengers_after_first_stop(Off2, On2, Total).
% Query to find out the total number of passengers after the second stop
query(TotalAfterSecond) :-
passengers_after_second_stop(8, 40, TotalAfterFirst),
passengers_after_second_stop(21, 12, TotalAfterSecond).
% Uncomment the following line to run the query
% ?- query(TotalAfterSecond).
%query(TotalAfterSecond).