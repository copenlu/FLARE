% Define the quantities and prices of red, blue, and green balls
red_balls(3).
blue_balls(11).
green_balls(25).
red_price(9).
blue_price(5).
green_price(3).
% Calculate the total amount from selling red balls
total_amount_red(Total) :-
red_balls(Red),
red_price(Price),
Total is Red * Price.
% Calculate the total amount from selling blue balls
total_amount_blue(Total) :-
blue_balls(Blue),
blue_price(Price),
Total is Blue * Price.
% Calculate the total amount from selling green balls
total_amount_green(Total) :-
green_balls(Green),
green_price(Price),
Total is Green * Price.
% Calculate the total amount received from selling all the balls
total_amount_received(Total) :-
total_amount_red(RedTotal),
total_amount_blue(BlueTotal),
total_amount_green(GreenTotal),
Total is RedTotal + BlueTotal + GreenTotal.
% Query predicate to run the program and get the result
query(TotalAmount) :-
total_amount_received(TotalAmount).
% Uncomment the following line to run the query
% ?- query(TotalAmount).
%query(TotalAmount).