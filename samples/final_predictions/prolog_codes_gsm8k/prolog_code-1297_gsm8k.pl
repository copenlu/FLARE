% Define the rules to calculate the total amount of dog food consumed by one German Shepherd and one Bulldog in a week
german_shepherd_food_per_week(TotalFood) :- TotalFood is 5 * 7.
bulldog_food_per_week(TotalFood) :- TotalFood is 3 * 7.
% Define the rules to calculate the total amount of dog food consumed by all German Shepherds and all Bulldogs in a week
total_german_shepherd_food(Total) :- Total is 3 * 5 * 7.
total_bulldog_food(Total) :- Total is 2 * 3 * 7.
% Define the rule to calculate the overall total amount of dog food needed for a week
total_dog_food_needed(Total) :- total_german_shepherd_food(GSFood), total_bulldog_food(BulldogFood), Total is GSFood + BulldogFood.
% Query to find the total amount of dog food needed for a week
query(Total) :- total_dog_food_needed(Total).
% Uncomment the following line to run the query
% ?- query(Total).
%query(Total).