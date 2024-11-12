% Define the rule for calculating the number of marbles given to Darla
marbles_given_to_darla(TotalMarbles, DallasMarbles, LostMarbles, DarlaMarbles) :-
DallasTotalMarbles is DallasMarbles + LostMarbles,
DarlaMarbles is TotalMarbles - DallasTotalMarbles.
% Define a predicate to execute the specific query with given values
query(DarlaMarbles) :-
% Mazie initially had 52 marbles, Dallas has 21 marbles after losing 4
marbles_given_to_darla(52, 21, 4, DarlaMarbles).
% Uncomment the line below to run the query
% ?- query(DarlaMarbles).
%query(DarlaMarbles).