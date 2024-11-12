% Define a predicate to calculate the number of cupcakes Carly made
cupcakes_made(Cupcakes) :-
% Number of brownies is 2 less than three times the number of cupcakes
% Number of Brownies = 3 * Number of Cupcakes - 2
Brownies is 3 * Cupcakes - 2,
% Total treats required for Carly's class
TotalTreats is Cupcakes + Brownies,
% Total treats needed for 5 people, each getting 2 treats
TotalTreats = 5 * 2.
% Define a query predicate to find out the number of cupcakes Carly made
query(Cupcakes) :-
cupcakes_made(Cupcakes).
% Uncomment the line below to run the query in SWI-Prolog
% query(Cupcakes).
%query(Cupcakes).