% Define a rule to calculate the number of carrot sticks Matt needs to eat
calculate_carrot_sticks(TotalCookies, CarrotSticks) :-
CarrotSticks is (TotalCookies - 2) * 2.
% Query the rule with the total number of cookies Matt wants to eat (5 in this case)
query(CarrotSticks) :-
calculate_carrot_sticks(5, CarrotSticks).
% Uncomment the following line to run the query and calculate the number of carrot sticks Matt needs to eat
% ?- query(CarrotSticks).
%query(CarrotSticks).