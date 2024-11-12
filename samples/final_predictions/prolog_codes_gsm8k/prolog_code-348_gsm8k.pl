% Define the rule to calculate the total number of legs based on the number of cows and chickens
total_legs(C, Ch, TotalLegs) :-
TotalLegs is C * 4 + Ch * 2.
% Define the rule representing the constraints given in the problem
farm_animals(C, Ch) :-
C + Ch = 60,  % Total number of animals is 60
Ch is 2 * C.  % Twice as many chickens as cows
% Query predicate to calculate the total number of legs on the farm
query(TotalLegs) :-
farm_animals(C, Ch),  % Get the values of C and Ch satisfying the constraints
total_legs(C, Ch, TotalLegs).  % Calculate the total number of legs
% Uncomment the following line to run the query and find out the total number of legs
% ?- query(TotalLegs).
%query(TotalLegs).