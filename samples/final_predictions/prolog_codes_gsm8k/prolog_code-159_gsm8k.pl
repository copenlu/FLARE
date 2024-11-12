% Conversion factors
inch_to_feet(1, 12).
feet_to_feet(1, 1).
% Calculate total length of rolls in feet
total_length_rolls(TotalLength) :-
inch_to_feet(4, RollLengthInFeet),  % Each roll is 4 inches long
TotalLength is 300 * RollLengthInFeet.
% Calculate total length of chocolate croissants in feet
total_length_croissants(TotalLength) :-
inch_to_feet(6, CroissantLengthInFeet),  % Each croissant is 6 inches long
TotalLength is 120 * CroissantLengthInFeet.
% Calculate total length of baguettes in feet
total_length_baguettes(TotalLength) :-
feet_to_feet(2, BaguetteLengthInFeet),  % Each baguette is 2 feet long
TotalLength is 60 * BaguetteLengthInFeet.
% Calculate total length of all baked goods in feet
total_length_all_baked_goods(TotalLength) :-
total_length_rolls(RollsLength),
total_length_croissants(CroissantsLength),
total_length_baguettes(BaguettesLength),
TotalLength is RollsLength + CroissantsLength + BaguettesLength.
% Query to find the total length of all baked goods in feet
query(TotalLength) :-
total_length_all_baked_goods(TotalLength).
% Uncomment the following line to run the query and find out the total length of all baked goods in feet.
% query(TotalLength).
%query(TotalLength).