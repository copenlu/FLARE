% Predicate to calculate total cookies eaten
% Params: CookiesSueMonday, CookiesSueTuesday, CookiesSisterMonday, CookiesSisterTuesday, TotalCookiesSue, TotalCookiesSister
total_cookies(CookiesSueMonday, CookiesSueTuesday, CookiesSisterMonday, CookiesSisterTuesday, TotalCookiesSue, TotalCookiesSister) :-
TotalCookiesSue is CookiesSueMonday + CookiesSueTuesday,
TotalCookiesSister is CookiesSisterMonday + CookiesSisterTuesday.
% Predicate to calculate total calories consumed
% Params: TotalCookiesSue, TotalCookiesSister, CalorieValue, TotalCaloriesSue, TotalCaloriesSister
total_calories(TotalCookiesSue, TotalCookiesSister, CalorieValue, TotalCaloriesSue, TotalCaloriesSister) :-
TotalCaloriesSue is TotalCookiesSue * CalorieValue,
TotalCaloriesSister is TotalCookiesSister * CalorieValue.
% Predicate to calculate the difference in total calories consumed
% Params: TotalCaloriesSue, TotalCaloriesSister, CaloriesDifference
calories_difference(TotalCaloriesSue, TotalCaloriesSister, CaloriesDifference) :-
CaloriesDifference is TotalCaloriesSue - TotalCaloriesSister.
% Main predicate to compute the difference in total calories consumed by Sue and her sister
% Params: CaloriesDifference
calculate_calories_difference(CaloriesDifference) :-
% Constants
CookiesSueMonday = 5,
CookiesSueTuesday = 4 * 5,  % 4 times as many as Monday
CookiesSisterMonday = 5,
CookiesSisterTuesday = 13,
CalorieValue = 200,  % Calories per cookie
% Calculate total cookies eaten
total_cookies(CookiesSueMonday, CookiesSueTuesday, CookiesSisterMonday, CookiesSisterTuesday, TotalCookiesSue, TotalCookiesSister),
% Calculate total calories consumed
total_calories(TotalCookiesSue, TotalCookiesSister, CalorieValue, TotalCaloriesSue, TotalCaloriesSister),
% Calculate the difference in total calories consumed
calories_difference(TotalCaloriesSue, TotalCaloriesSister, CaloriesDifference).
% Query predicate to get the difference in total calories consumed
query(CaloriesDifference) :-
calculate_calories_difference(CaloriesDifference).
% Uncomment the following line to run the query
% query(CaloriesDifference).
%query(CaloriesDifference).