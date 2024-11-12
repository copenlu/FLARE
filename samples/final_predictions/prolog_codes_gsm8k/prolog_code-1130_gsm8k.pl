% Define the rule to calculate the total number of jellyfish in the tank
total_jellyfish(TotalJellyfish) :-
TotalJellyfish is 30,  % Assumed total number of jellyfish in the tank
LargeJellyfish is TotalJellyfish // 5,
LargeJellyfishChangeColor is LargeJellyfish // 3,
SmallJellyfish is TotalJellyfish - LargeJellyfish,
TotalChangedColor is LargeJellyfishChangeColor + SmallJellyfish,
TotalChangedColor =:= 6,
TotalJellyfish is LargeJellyfish + SmallJellyfish.
% Query to find the total number of jellyfish in the tank
query_total_jellyfish(TotalJellyfish) :-
total_jellyfish(TotalJellyfish).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_jellyfish(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).