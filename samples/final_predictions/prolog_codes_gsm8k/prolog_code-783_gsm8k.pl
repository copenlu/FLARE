% Facts representing the quantities and prices of vegetables
vegetable(cucumber, 3, 2).
vegetable(tomato, 5, 1).
vegetable(lettuce, 1, 3).
% Rule to calculate the total cost of a specific vegetable
total_cost(Vegetable, Quantity, Price, Total) :-
Total is Quantity * Price.
% Rule to calculate the total amount spent by the three of them for the salad
total_amount_spent(Total) :-
vegetable(cucumber, Cucumbers, CucumberPrice),
vegetable(tomato, Tomatoes, TomatoPrice),
vegetable(lettuce, Lettuce, LettucePrice),
total_cost(cucumber, Cucumbers, CucumberPrice, CucumberTotal),
total_cost(tomato, Tomatoes, TomatoPrice, TomatoTotal),
total_cost(lettuce, Lettuce, LettucePrice, LettuceTotal),
Total is CucumberTotal + TomatoTotal + LettuceTotal.
% Query to find the total amount spent for the salad
query(Total) :-
total_amount_spent(Total).
% Uncomment the line below to run the query
% query(Total).
%query(Total).