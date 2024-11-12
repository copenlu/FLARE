% Define the rate at which the candle melts per hour
length_melted_per_hour(2).
% Define the rule to calculate the total length melted over a given number of hours
total_length_melted(Hours, TotalLengthMelted) :-
length_melted_per_hour(MeltingRate),
TotalLengthMelted is MeltingRate * Hours.
% Calculate the total length melted over 4 hours
calculate_total_length_melted(TotalLengthMelted) :-
total_length_melted(4, TotalLengthMelted).  % Duration is 4 hours
% Query to find out how many centimeters shorter the candle will be after burning from 1:00 PM to 5:00 PM
query(TotalLengthMelted) :-
calculate_total_length_melted(TotalLengthMelted).
% Uncomment the following line to run the query
% ?- query(TotalLengthMelted).
%query(TotalLengthMelted).