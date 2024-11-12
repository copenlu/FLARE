% Define the number of sheep in Charleston
sheep_in_charleston(SeattleSheep, CharlestonSheep) :-
CharlestonSheep is SeattleSheep * 4.
% Define the number of sheep in Toulouse
sheep_in_toulouse(CharlestonSheep, ToulouseSheep) :-
ToulouseSheep is CharlestonSheep * 2.
% Define the total number of sheep
total_sheep(SeattleSheep, CharlestonSheep, ToulouseSheep, Total) :-
Total is SeattleSheep + CharlestonSheep + ToulouseSheep.
% Given information
seattle_sheep(20).
% Calculate the total number of sheep in Seattle, Charleston, and Toulouse
calculate_total_sheep(TotalSheep) :-
seattle_sheep(SeattleSheep),
sheep_in_charleston(SeattleSheep, CharlestonSheep),
sheep_in_toulouse(CharlestonSheep, ToulouseSheep),
total_sheep(SeattleSheep, CharlestonSheep, ToulouseSheep, TotalSheep).
% Query to find the total number of sheep
query(TotalSheep) :-
calculate_total_sheep(TotalSheep).
% Uncomment the following line to run the query
% ?- query(TotalSheep).
%query(TotalSheep).