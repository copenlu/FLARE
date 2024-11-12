% Define the dimensions of the rectangle
rectangle_length(27).
% Predicate to calculate the perimeter of the rectangle
rectangle_perimeter(Perimeter) :-
rectangle_length(Length),
% Predicate to calculate the side of the square
square_side(Side) :-
rectangle_perimeter(Perimeter),
Side is Perimeter / 4.
% Query predicate to return the side of the square
query(Side) :-
square_side(Side).
% Uncomment the following line to run the query
% ?- query(Side).
%query(Side).