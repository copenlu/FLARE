% Define a predicate to calculate the number of fish with red and blue stripes
fish_stripes(TotalFish, RedStripes, BlueStripes, TotalStripes) :-
% Calculate the number of fish with red stripes
RedStripes is TotalFish * (1/3),
% Calculate the number of remaining fish after accounting for red stripes
RemainingFish is TotalFish - RedStripes,
% Calculate the number of fish with blue stripes from the remaining fish
BlueStripes is RemainingFish * (5/11),
% Calculate the total number of fish with both red and blue stripes
TotalStripes is RedStripes + BlueStripes.
% Define a query predicate to find out the total number of fish with both red and blue stripes
query(TotalStripes) :-
% Total fish in the tank is 66
fish_stripes(66, RedStripes, BlueStripes, TotalStripes).
% Uncomment the line below to run the query in SWI-Prolog
% query(TotalStripes).
%query(TotalStripes).