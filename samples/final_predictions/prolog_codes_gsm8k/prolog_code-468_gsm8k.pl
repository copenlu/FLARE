% Define the number of red cards
red_cards(15).
% Calculate the total number of cards for each color
total_cards(Red, Green, Yellow) :-
red_cards(Red),
Green is round(1.6 * Red), % 60% more green cards than red cards
Yellow is Red + Green.     % Yellow cards are the sum of red and green cards
% Calculate the total number of cards for each color and find the sum
total_cards(Red, Green, Yellow, Total) :-
total_cards(Red, Green, Yellow),
Total is Red + Green + Yellow.
% Query the predicate to find the solution
query(Total) :-
total_cards(Red, Green, Yellow, Total).
% Uncomment the following line to run the query and calculate the total number of cards
% ?- query(Total).
%query(Total).