% Define the rule for calculating total utensils remaining
total_utensils_remaining(MeasuringCups, MeasuringSpoons, GiftedSpoons, TotalRemaining) :-
MeasuringCups = 24, % Two dozen cups
MeasuringSpoons is 2/3 * MeasuringCups, % Calculate spoons based on the ratio
TotalRemaining is MeasuringCups + MeasuringSpoons - GiftedSpoons. % Calculate total remaining utensils
% Predicate to encapsulate the entire calculation and output the total remaining utensils
calculate_utensils_remaining(TotalRemaining) :-
total_utensils_remaining(24, MeasuringSpoons, 6, TotalRemaining). % Given values: 24 cups, 6 gifted spoons
% Query to find the total utensils Jonathan has remaining
query(TotalRemaining) :-
calculate_utensils_remaining(TotalRemaining).
% Uncomment the following line to run the query
% ?- query(TotalRemaining).
%query(TotalRemaining).