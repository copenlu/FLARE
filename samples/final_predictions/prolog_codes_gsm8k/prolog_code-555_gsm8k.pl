% Define the monthly saving target
monthly_target(1125).
% Calculate the daily saving amount for the first half of the month
daily_saving_first_half(X) :-
X is monthly_target(1125) / 30 / 3.  % Assumed that the first half is 15 days
% Calculate the daily saving amount for the second half of the month
daily_saving_second_half(Y) :-
daily_saving_first_half(X),
Y is 2 * X.
% Calculate the total saving in the first half
total_saving_first_half(X, TotalFirstHalf) :-
TotalFirstHalf is X * 15.  % Assumed that the first half is 15 days
% Calculate the total saving in the second half
total_saving_second_half(Y, TotalSecondHalf) :-
TotalSecondHalf is Y * 15.  % Assumed that the second half is 15 days
% Define the equation to solve for the daily saving amount in the second half
equation_to_solve(Y) :-
daily_saving_second_half(Y),
total_saving_first_half(_, TotalFirstHalf),
total_saving_second_half(Y, TotalSecondHalf),
TotalFirstHalf + TotalSecondHalf =:= monthly_target(1125).
% Query predicate to find the daily saving amount for the second half
query(Y) :-
equation_to_solve(Y).
% Uncomment the line below to run the query
% ?- query(Y).
%query(Y).