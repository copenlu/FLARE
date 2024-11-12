% Define the rule to calculate the total number of pencils
total_pencils(JamPencils, MegPencils, TotalPencils) :-
JamPencils is 3 * 26 + 2, % Jam has 3 boxes of 26 pencils each and 2 loose pencils
MegPencils is 46, % Meg has 46 pencils
TotalPencils is JamPencils + MegPencils.
% Define the rule to calculate the total number of boxes needed
total_boxes(TotalPencils, Boxes) :-
Boxes is ceil(TotalPencils / 26). % Each box can store 26 pencils
% Define the query predicate to run the program and get the result
query(Boxes) :-
total_pencils(JamPencils, MegPencils, TotalPencils),
total_boxes(TotalPencils, Boxes).
% Uncomment the following line to run the query
% ?- query(Boxes).
%query(Boxes).