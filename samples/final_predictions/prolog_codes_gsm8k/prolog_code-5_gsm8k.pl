% Define total feed needed for the day
total_feed_needed(MorningFeed, AfternoonFeed, FlockSize, TotalFeed) :-
TotalFeed is (MorningFeed + AfternoonFeed) * FlockSize.
% Define feed needed for the final meal
final_meal_feed(MorningFeed, AfternoonFeed, FlockSize, FinalMealFeed) :-
total_feed_needed(MorningFeed, AfternoonFeed, FlockSize, TotalFeed),
FinalMealFeed is TotalFeed - (MorningFeed + AfternoonFeed).
% Predicate to encapsulate the entire calculation and output the feed needed for the final meal
calculate_final_meal_feed(FinalMealFeed) :-
final_meal_feed(15, 25, 20, FinalMealFeed).  % Given values in the problem
% Query to find the feed needed for the final meal
query(FinalMealFeed) :-
calculate_final_meal_feed(FinalMealFeed).
% Uncomment the following line to run the query
% ?- query(FinalMealFeed).
%query(FinalMealFeed).