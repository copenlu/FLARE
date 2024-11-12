% Define the number of green eggs Cindy had
green_eggs(5).
% Calculate the number of blue eggs based on the number of green eggs
blue_eggs(GreenEggs, BlueEggs) :-
BlueEggs is GreenEggs * 2.
% Calculate the number of pink eggs based on the number of blue eggs
pink_eggs(BlueEggs, PinkEggs) :-
PinkEggs is BlueEggs - 1.
% Calculate the number of yellow eggs based on the number of pink eggs
yellow_eggs(PinkEggs, YellowEggs) :-
YellowEggs is PinkEggs // 3.
% Calculate the total number of eggs Cindy had
total_eggs(TotalEggs) :-
green_eggs(GreenEggs),
blue_eggs(GreenEggs, BlueEggs),
pink_eggs(BlueEggs, PinkEggs),
yellow_eggs(PinkEggs, YellowEggs),
TotalEggs is GreenEggs + BlueEggs + PinkEggs + YellowEggs.
% Query predicate to find the total number of eggs Cindy had
query(TotalEggs) :-
total_eggs(TotalEggs).
% Uncomment the line below to run the query
% query(TotalEggs).
%query(TotalEggs).