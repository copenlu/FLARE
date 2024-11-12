% Define the total number of loaves baked, sold, and returned
total_baked(200).
total_sold_morning(93).
total_sold_afternoon(39).
total_returned(6).
% Calculate the total number of loaves sold
total_sold(TotalSold) :-
total_sold_morning(Morning),
total_sold_afternoon(Afternoon),
TotalSold is Morning + Afternoon.
% Calculate the remaining loaves
loaves_left(Remaining) :-
total_baked(Baked),
total_sold(Sold),
total_returned(Returned),
Remaining is Baked - Sold - Returned.
% Query predicate to run the program and get the result
query(Remaining) :-
loaves_left(Remaining).
% Uncomment the following line to run the query
% ?- query(Remaining).
%query(Remaining).