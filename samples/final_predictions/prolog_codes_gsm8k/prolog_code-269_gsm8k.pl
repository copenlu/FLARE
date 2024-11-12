% Define a rule to calculate the total number of marbles in the boxes
total_marbles_in_boxes(NumBoxes, MarblesPerBox, TotalMarbles) :-
TotalMarbles is NumBoxes * MarblesPerBox.
% Define a rule to calculate the total number of marbles Maddison has
total_marbles(TotalMarblesInBoxes, MarblesReceived, TotalMarbles) :-
TotalMarbles is TotalMarblesInBoxes + MarblesReceived.
% Given values
NumBoxes = 5,  % Assumed atom/predicate
MarblesPerBox = 50,  % Assumed atom/predicate
MarblesReceived = 20,  % Assumed atom/predicate
% Calculate the total number of marbles in the boxes
total_marbles_in_boxes(NumBoxes, MarblesPerBox, TotalMarblesInBoxes),
% Calculate the total number of marbles Maddison has
total_marbles(TotalMarblesInBoxes, MarblesReceived, TotalMarbles).
% Query predicate to get the total number of marbles Maddison has
query(TotalMarbles) :-
total_marbles_in_boxes(5, 50, TotalMarblesInBoxes),
total_marbles(TotalMarblesInBoxes, 20, TotalMarbles).
% Uncomment the following line to run the query
% query(TotalMarbles).
%query(TotalMarbles).