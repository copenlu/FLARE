% Define the length of Topher's shoe in feet and inches
tophers_shoe_length(8, 4).  % Assumed atom for Topher's shoe length
% Define a rule to calculate the length of one of Bobby's shoes in inches
bobbys_shoe_length(TophersShoeLength, BobbysShoeLength) :-
TophersShoeLength_inches is TophersShoeLength * 12 + 4,
BobbysShoeLength is (TophersShoeLength_inches - 10) / 9.
% Query predicate to find the length of one of Bobby's shoes
query(BobbysShoeLength) :-
tophers_shoe_length(8, 4),  % Topher's shoe length is 8 feet and 4 inches
bobbys_shoe_length(8, 4, BobbysShoeLength).
% Uncomment the line below to run the query
% query(BobbysShoeLength).
%query(BobbysShoeLength).