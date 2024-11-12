% Define the relationship between the number of red and green cars
green_cars(Red, Green) :- Green is Red - 2.
% Define the relationship between the number of green and blue cars
blue_cars(Green, Blue) :- Blue is 3 * Green.
% Define the total number of cars in the rink
total_cars(Red, Green, Blue, Yellow) :- Red + Green + Blue + Yellow = 75.
% Calculate the number of yellow cars based on the total and other colored cars
yellow_cars(Red, Green, Blue, Yellow) :-
total_cars(Red, Green, Blue, Yellow),
green_cars(Red, Green),
blue_cars(Green, Blue),
Yellow is 75 - Red - Green - Blue.
% Query predicate to run the program and get the result
query(Yellow) :-
yellow_cars(12, Green, Blue, Yellow).
% Uncomment the following line to run the query
% ?- query(Yellow).
%query(Yellow).