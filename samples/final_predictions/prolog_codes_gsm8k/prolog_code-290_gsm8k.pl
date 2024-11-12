% Define a rule to calculate the total length occupied by the topaz gemstones
% Params: NumGemstones, LengthPerGemstone, TotalGemstoneLength
gemstone_length(NumGemstones, LengthPerGemstone, TotalGemstoneLength) :-
TotalGemstoneLength is NumGemstones * LengthPerGemstone.
% Define a rule to calculate the remaining length to be filled with sterling silver beads
% Params: TotalNecklaceLength, TotalGemstoneLength, RemainingLength
remaining_length(TotalNecklaceLength, TotalGemstoneLength, RemainingLength) :-
RemainingLength is TotalNecklaceLength - TotalGemstoneLength.
% Define a rule to calculate the number of sterling silver beads used per necklace
% Params: RemainingLength, LengthPerBead, NumBeads
calculate_num_beads(RemainingLength, LengthPerBead, NumBeads) :-
NumBeads is RemainingLength / LengthPerBead.
% Main predicate to compute the number of sterling silver beads used per necklace
% Params: NumBeads
calculate_beads_per_necklace(NumBeads) :-
% Constants
NumGemstones = 8,
LengthPerGemstone = 1,
LengthPerBead = 1/4,  % Length of each sterling silver bead in inches
TotalNecklaceLength = 25,  % Total length of the necklace in inches
% Calculate the total length occupied by the gemstones
gemstone_length(NumGemstones, LengthPerGemstone, TotalGemstoneLength),
% Calculate the remaining length to be filled with sterling silver beads
remaining_length(TotalNecklaceLength, TotalGemstoneLength, RemainingLength),
% Calculate the number of sterling silver beads used
calculate_num_beads(RemainingLength, LengthPerBead, NumBeads).
% Query predicate to get the number of sterling silver beads used per necklace
query(NumBeads) :-
calculate_beads_per_necklace(NumBeads).
% Uncomment the following line to run the query
% query(NumBeads).
%query(NumBeads).