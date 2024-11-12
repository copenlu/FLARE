% Define the rule to calculate the total number of fruits George has
total_fruits(Bananas, TotalFruits) :-
Pears is Bananas + (Bananas * 45 / 100), % Calculate the number of pears (45% more than bananas)
TotalFruits is Bananas + Pears. % Calculate the total number of fruits
% Query to find the total number of fruits George has when he has 200 bananas
query_total_fruits(TotalFruits) :-
total_fruits(200, TotalFruits).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_fruits(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).