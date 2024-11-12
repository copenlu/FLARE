% Define a predicate to calculate the number of children in the city of Soda
number_of_children(TotalPopulation, Men, Women, Children) :-
Children is TotalPopulation - Men - Women.
% Calculate the number of children in the city of Soda
number_of_children(23786, 8417, 9092, Children).
% Define a query predicate to find out the number of children
query(Children) :-
number_of_children(23786, 8417, 9092, Children).
% Uncomment the line below to run the query in SWI-Prolog
% query(Children).
%query(Children).