% Define the rule to calculate the total calories in all the mini pastries
total_calories_baked(TotalCalories) :-
CinnamonRollsCalories is (200 * 600) / 3,       % Calculate total calories in mini cinnamon rolls
BlueberryMuffinsCalories is (300 * 450) / 3,    % Calculate total calories in mini blueberry muffins
TotalCalories is CinnamonRollsCalories + BlueberryMuffinsCalories.  % Calculate total calories in all mini pastries
% Query to find the total calories in all the mini pastries
query_total_calories(TotalCalories) :-
total_calories_baked(TotalCalories).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_calories(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).