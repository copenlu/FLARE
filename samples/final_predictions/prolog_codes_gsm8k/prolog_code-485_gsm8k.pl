% Define the length of the shark in feet
shark_length_feet(10).
% Define the length of each remora in inches
remora_length_inches(6).
% Calculate the percentage of the shark's body length represented by the remoras
calculate_percentage(Percentage) :-
shark_length_feet(SharkFeet),
remora_length_inches(RemoraInches),
SharkInches is SharkFeet * 12, % Convert shark length to inches
TotalRemoraLength is 2 * RemoraInches, % Calculate total length of remoras
Percentage is (TotalRemoraLength / SharkInches) * 100. % Calculate percentage
% Query to calculate the percentage
query(Percentage) :-
calculate_percentage(Percentage).
% Uncomment the following line to run the query and calculate the percentage
% ?- query(Percentage).
%query(Percentage).