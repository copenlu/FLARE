% Calculate the total number of blocks Johnny picks up
total_lego_blocks(Set1, Set2, Set3, TotalBlocks) :-
Set2 is 3 * Set1,  % Set2 has 3 times more pieces than Set1
Set3 is Set1 / 4,  % Set3 has 1/4 the number of pieces in Set1
TotalBlocks is Set1 + Set2 + Set3.  % Total blocks is the sum of pieces in all three sets
% Query to calculate and return the total number of blocks Johnny picks up
query(TotalBlocks) :-
total_lego_blocks(500, _, _, TotalBlocks).  % Given Set1 has 500 pieces
% Uncomment the following line to run the query and find out the total number of blocks Johnny picks up
% query(TotalBlocks).
%query(TotalBlocks).