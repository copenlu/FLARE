% Define the initial quantities of green and yellow pens
initial_pens(green, 22).
initial_pens(yellow, 10).
% Define the quantities of pens in each bag
pens_in_bag(blue, 9).
pens_in_bag(red, 6).
% Define the quantities of bags purchased
bags_purchased(blue, 6).
bags_purchased(red, 2).
% Define rules to calculate the total number of pens for each color
total_pens(Color, Total) :-
initial_pens(Color, Initial),
pens_in_bag(Color, PensInBag),
bags_purchased(Color, Bags),
Total is Initial + (PensInBag * Bags).
% Define a rule to calculate the total number of pens Janet has
total_pens_janet(Total) :-
total_pens(green, GreenTotal),
total_pens(yellow, YellowTotal),
total_pens(blue, BlueTotal),
total_pens(red, RedTotal),
Total is GreenTotal + YellowTotal + BlueTotal + RedTotal.
% Query predicate to find the total number of pens Janet has
query(Total) :-
total_pens_janet(Total).
% Uncomment the line below to run the query in SWI-Prolog
% ?- query(Total).
%query(Total).