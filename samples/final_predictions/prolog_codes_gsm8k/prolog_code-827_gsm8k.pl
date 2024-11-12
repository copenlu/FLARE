% Define the number of chips needed to cover one square inch
chips_per_inch(12).
% Calculate the maximum length of the mosaic
calculate_mosaic_length(NumBags, Height, Length) :-
TotalChips is NumBags * 72,
TotalArea is Height * Length,
chips_per_inch(ChipsPerInch),
TotalChipsNeeded is ChipsPerInch * TotalArea,
Length is TotalChips / ChipsPerInch.
% Query to find the maximum length of the mosaic
query(Length) :-
calculate_mosaic_length(2, 3, Length).
% Uncomment the following line to run the query and calculate the maximum length of the mosaic
% ?- query(Length).
%query(Length).