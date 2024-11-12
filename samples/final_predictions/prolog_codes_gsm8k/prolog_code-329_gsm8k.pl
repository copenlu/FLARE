% Define the rule to calculate the cost of the magazine
cost_magazine(BookCost, MagazineCost) :-
MagazineCost is BookCost / 2.
% Define the rule to calculate the cost of the pen
cost_pen(MagazineCost, PenCost) :-
PenCost is MagazineCost - 1.
% Given information
book_cost(4).
% Calculate the cost of the pen
calculate_pen_cost(PenCost) :-
book_cost(BookCost),
cost_magazine(BookCost, MagazineCost),
cost_pen(MagazineCost, PenCost).
% Query predicate to run the program and get the result
query(PenCost) :-
calculate_pen_cost(PenCost).
% Uncomment the following line to run the query
% ?- query(PenCost).
%query(PenCost).