% Define a rule to calculate the number of face masks Johnny bought
% Params: MikeMasks, JohnnyMasks
calculate_masks(MikeMasks, JohnnyMasks) :-
JohnnyMasks is 2 + (3 * MikeMasks).
% Main predicate to compute the number of face masks Johnny bought
% Params: JohnnyMasks
calculate_johnny_masks(JohnnyMasks) :-
% Constants
MikeMasks = 5,  % Number of face masks Mike bought
% Calculate the number of face masks Johnny bought
calculate_masks(MikeMasks, JohnnyMasks).
% Query predicate to get the number of face masks Johnny bought
query(JohnnyMasks) :-
calculate_johnny_masks(JohnnyMasks).
% Uncomment the following line to run the query
% query(JohnnyMasks).
%query(JohnnyMasks).