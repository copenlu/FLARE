% Define the thickness of each book as facts
thickness(book1, 31).
thickness(book2, 50).
thickness(book3, 45).
thickness(book4, 62).
% Define a predicate to calculate the total thickness of the four books
total_thickness(Total) :-
thickness(book1, Thickness1),
thickness(book2, Thickness2),
thickness(book3, Thickness3),
thickness(book4, Thickness4),
Total is Thickness1 + Thickness2 + Thickness3 + Thickness4.
% Query predicate to run the program and get the result
query(TotalThickness) :-
total_thickness(TotalThickness).
% Uncomment the following line to run the query
% ?- query(TotalThickness).
%query(TotalThickness).