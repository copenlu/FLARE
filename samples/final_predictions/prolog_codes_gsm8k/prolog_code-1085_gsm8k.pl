% Predicate to calculate the total daily consumption of cat food
% Params: NumberOfCats, AmountPerCatTwiceADay, TotalDailyConsumption
total_daily_consumption(NumberOfCats, AmountPerCatTwiceADay, TotalDailyConsumption) :-
TotalDailyConsumption is NumberOfCats * 2 * AmountPerCatTwiceADay.
% Predicate to calculate the number of days the cat food will last
% Params: TotalFoodAvailable, TotalDailyConsumption, DaysFoodWillLast
days_food_will_last(TotalFoodAvailable, TotalDailyConsumption, DaysFoodWillLast) :-
DaysFoodWillLast is TotalFoodAvailable / TotalDailyConsumption.
% Main predicate to compute the number of days 720 grams of cat food will last for 3 cats
% Params: Days
calculate_days_food_will_last(Days) :-
% Constants
NumberOfCats = 3,
AmountPerCatTwiceADay = 60,
TotalFoodAvailable = 720,
% Calculate total daily consumption
total_daily_consumption(NumberOfCats, AmountPerCatTwiceADay, TotalDailyConsumption),
% Calculate the number of days the food will last
days_food_will_last(TotalFoodAvailable, TotalDailyConsumption, Days).
% Query predicate to get the number of days the cat food will last
query(Days) :-
calculate_days_food_will_last(Days).
% Uncomment the following line to run the query
% query(Days).
%query(Days).