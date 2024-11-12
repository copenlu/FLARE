% Define a predicate to calculate the initial number of bandages
initial_bandages(InitialBandages) :-
% Given values for bandages used, ordered, and left on different days
BandagesUsedFirstDay is 38,
BandagesOrderedFirstDay is 50,
BandagesUsedSecondDay is 28,
BandagesOrderedThirdDay is 100,
BandagesUsedThirdDay is 25,
BandagesLeftThirdDay is 78,
% Calculate total bandages used and ordered
TotalBandagesUsed is BandagesUsedFirstDay + BandagesUsedSecondDay + BandagesUsedThirdDay,
TotalBandagesOrdered is BandagesOrderedFirstDay + BandagesOrderedThirdDay,
% Calculate the initial number of bandages
InitialBandages is TotalBandagesUsed + BandagesLeftThirdDay - TotalBandagesOrdered.
% Define a query predicate to find out the initial number of bandages
query(InitialBandages) :-
initial_bandages(InitialBandages).
% Uncomment the line below to run the query in SWI-Prolog
% query(InitialBandages).
%query(InitialBandages).