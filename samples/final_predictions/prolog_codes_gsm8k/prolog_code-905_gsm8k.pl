% Define the usual_concert_duration predicate to calculate the duration of Elaina's usual concerts
usual_concert_duration(UsualDuration) :-
UsualDuration is (65 - 15) / 2.  % Equation: 2 * UsualDuration + 15 = 65
% Query predicate to run the program and get the result
query(UsualDuration) :-
usual_concert_duration(UsualDuration).
% Uncomment the following line to run the query
% ?- query(UsualDuration).
%query(UsualDuration).