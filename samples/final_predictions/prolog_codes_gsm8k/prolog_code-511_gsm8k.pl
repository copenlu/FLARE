% Define the number of oranges Ashley has
oranges_ashley(50).
% Define the number of oranges Brianne has
oranges_brianne(70).
% Calculate the total number of oranges
total_oranges(Total) :-
oranges_ashley(AshleyOranges),
oranges_brianne(BrianneOranges),
Total is AshleyOranges + BrianneOranges.
% Calculate the number of Greek orange pies they can make
greek_orange_pies(NumPies) :-
total_oranges(TotalOranges),
NumPies is TotalOranges // 3.  % Integer division to get the number of pies
% Query predicate to run the program and get the result
query(NumPies) :-
greek_orange_pies(NumPies).
% Uncomment the following line to run the query
% ?- query(NumPies).
%query(NumPies).