% Define the capacity of each shelf
shelf_capacity(middle, 10).
shelf_capacity(bottom, MiddleCapacity) :- shelf_capacity(middle, MiddleCapacity), BottomCapacity is MiddleCapacity * 2.
shelf_capacity(top, BottomCapacity) :- shelf_capacity(bottom, BottomCapacity), TopCapacity is BottomCapacity - 5.
% Define the total capacity of a single bookcase
bookcase_capacity(TotalCapacity) :- shelf_capacity(middle, MiddleCapacity), shelf_capacity(bottom, BottomCapacity), shelf_capacity(top, TopCapacity), TotalCapacity is MiddleCapacity + MiddleCapacity + BottomCapacity + TopCapacity.
% Define the predicate to calculate the number of bookcases needed
calculate_bookcases_needed(Books, Bookcases) :- bookcase_capacity(TotalCapacity), Bookcases is ceil(Books / TotalCapacity).
% Query to find the number of bookcases needed for 110 books
query(Bookcases) :- calculate_bookcases_needed(110, Bookcases).
% Uncomment the following line to run the query
% ?- query(Bookcases).
%query(Bookcases).