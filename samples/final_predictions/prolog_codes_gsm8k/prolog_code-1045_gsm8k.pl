% Define the number of bananas picked on each day
bananas_picked(wednesday, 4).
bananas_picked(thursday, 6).
bananas_picked(friday, 3 * 4). % Triple the number picked on Wednesday
% Calculate the total number of bananas John has
total_bananas(Total) :-
bananas_picked(wednesday, BananasWednesday),
bananas_picked(thursday, BananasThursday),
bananas_picked(friday, BananasFriday),
Total is BananasWednesday + BananasThursday + BananasFriday.
% Query predicate to find the total number of bananas John has
query(Total) :-
total_bananas(Total).
% Uncomment the line below to run the query
% query(Total).
%query(Total).