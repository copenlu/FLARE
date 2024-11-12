% Define the rate_of_blinking predicate to calculate the rate of blinking based on given blinks and time
rate_of_blinking(Blinks, Time) :-
Time is Blinks / 5.
% Define the time_for_blinks predicate to calculate the time it will take for a certain number of blinks
time_for_blinks(Blinks, Time) :-
rate_of_blinking(255, Rate),  % Given that the light blinks 255 times in 5 minutes
Time is Blinks / Rate.
% Query predicate to run the program and get the result
query(Time) :-
time_for_blinks(459, Time).
% Uncomment the following line to run the query
% ?- query(Time).
%query(Time).