% Define rules to calculate the number of each type of fish caught by Locsin
locsin_starfish(AnakinStarfish, LocsinStarfish) :-
LocsinStarfish is AnakinStarfish - 5.
locsin_seahorses(AnakinSeahorses, LocsinSeahorses) :-
LocsinSeahorses is AnakinSeahorses - 3.
locsin_clownfish(AnakinClownfish, LocsinClownfish) :-
LocsinClownfish is AnakinClownfish + 2.
% Define rules to calculate the total number of each type of fish caught
total_starfish(AnakinStarfish, LocsinStarfish, TotalStarfish) :-
TotalStarfish is AnakinStarfish + LocsinStarfish.
total_seahorses(AnakinSeahorses, LocsinSeahorses, TotalSeahorses) :-
TotalSeahorses is AnakinSeahorses + LocsinSeahorses.
total_clownfish(AnakinClownfish, LocsinClownfish, TotalClownfish) :-
TotalClownfish is AnakinClownfish + LocsinClownfish.
% Calculate the total number of fish caught by both Anakin and Locsin
total_fish(AnakinStarfish, AnakinSeahorses, AnakinClownfish, TotalFish) :-
locsin_starfish(AnakinStarfish, LocsinStarfish),
locsin_seahorses(AnakinSeahorses, LocsinSeahorses),
locsin_clownfish(AnakinClownfish, LocsinClownfish),
total_starfish(AnakinStarfish, LocsinStarfish, TotalStarfish),
total_seahorses(AnakinSeahorses, LocsinSeahorses, TotalSeahorses),
total_clownfish(AnakinClownfish, LocsinClownfish, TotalClownfish),
TotalFish is TotalStarfish + TotalSeahorses + TotalClownfish.
% Query to calculate and return the total number of fish caught by Anakin and Locsin
query(TotalFish) :-
total_fish(10, 6, 3, TotalFish).  % Anakin caught 10 starfish, 6 sea horses, and 3 clownfish
% Uncomment the following line to run the query and find out the total number of fish caught
% ?- query(TotalFish).
%query(TotalFish).