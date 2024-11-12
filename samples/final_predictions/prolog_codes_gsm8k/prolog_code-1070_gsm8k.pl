% Predicate to calculate the current height after growth
% Params: InitialHeight, GrowthInInches, CurrentHeight
current_height(InitialHeight, GrowthInInches, CurrentHeight) :-
CurrentHeight is InitialHeight + GrowthInInches.
% Predicate to find the difference in heights
% Params: HeightXavier, HeightCole, HeightDifference
height_difference(HeightXavier, HeightCole, HeightDifference) :-
HeightDifference is abs(HeightCole - HeightXavier).
% Main predicate to compute the height difference between Xavier and Cole
% Params: HeightDifference
calculate_height_difference(HeightDifference) :-
% Constants
InitialHeightXavier = 4 * 12,  % 4 feet converted to inches
GrowthXavier = 3,
InitialHeightCole = 50,
GrowthCole = 2,
% Calculate current heights
current_height(InitialHeightXavier, GrowthXavier, CurrentHeightXavier),
current_height(InitialHeightCole, GrowthCole, CurrentHeightCole),
% Calculate the difference in heights
height_difference(CurrentHeightXavier, CurrentHeightCole, HeightDifference).
% Query predicate to get the height difference
query(HeightDifference) :-
calculate_height_difference(HeightDifference).
% Uncomment the following line to run the query
% query(HeightDifference).
%query(HeightDifference).