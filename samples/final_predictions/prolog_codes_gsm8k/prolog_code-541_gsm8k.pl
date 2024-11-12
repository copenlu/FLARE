% Define the relationship between the number of chairs Jenna has compared to Ophelia
jenna_chairs(OpheliaChairs, JennaChairs) :-
JennaChairs is 3 * OpheliaChairs.
% Define the relationship between the number of sofas and chairs for each person
sofas_chairs(Sofas, Chairs) :-
Sofas is Chairs - 2.
% Given that Ophelia has 20 sofas, calculate the number of chairs she has
ophelia_chairs(20, Chairs) :-
sofas_chairs(20, Chairs).
% Calculate the total number of sofas and chairs for Ophelia and Jenna
total_sofas_chairs(TotalSofas, TotalChairs) :-
ophelia_chairs(20, OpheliaChairs),
jenna_chairs(OpheliaChairs, JennaChairs),
sofas_chairs(20, OpheliaChairs),  % Ophelia has 20 sofas
sofas_chairs(JennaSofas, JennaChairs),
TotalSofas is 20 + JennaSofas,  % Ophelia has 20 sofas
TotalChairs is OpheliaChairs + JennaChairs.
% Query predicate to run the program and get the result
query(TotalSofas, TotalChairs) :-
total_sofas_chairs(TotalSofas, TotalChairs).
% Uncomment the following line to run the query
% ?- query(TotalSofas, TotalChairs).
%query(TotalSofas, TotalChairs).