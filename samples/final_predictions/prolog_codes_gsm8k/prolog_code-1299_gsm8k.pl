% Define the rule to calculate the number of red blocks
red_blocks(RedBlocks) :-
BlueBlocks = 4,                     % Assumed atom/predicate: Number of blue blocks
YellowBlocks is BlueBlocks * 2,     % Calculate the number of yellow blocks
TotalBlueYellowBlocks is BlueBlocks + YellowBlocks,  % Calculate the total number of blue and yellow blocks
TotalBlocks is 32,                  % Total number of blocks in the tower
RedBlocks is TotalBlocks - TotalBlueYellowBlocks.  % Calculate the number of red blocks
% Query to find the number of red blocks in the tower
query_red_blocks(RedBlocks) :-
red_blocks(RedBlocks).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_red_blocks(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).