% Define the predicate to calculate the pieces eaten on the first day
pieces_eaten_first_day(Pieces) :-
Pieces is (2/5) * 60.
% Define the predicate to calculate the pieces eaten on the third day
pieces_eaten_third_day(Remaining, Pieces) :-
Pieces is (7/13) * Remaining.
% Define the predicate to calculate the total pieces eaten
total_pieces_eaten(Total) :-
pieces_eaten_first_day(FirstDay),  % Pieces eaten on the first day
pieces_eaten_third_day(60 - FirstDay - 10, ThirdDay),  % Remaining pieces after the first two days
Total is FirstDay + 10 + ThirdDay.  % Total pieces eaten
% Query predicate to run the program and get the result
query(Total) :-
total_pieces_eaten(Total).
% Uncomment the following line to run the query
% ?- query(Total).
%query(Total).