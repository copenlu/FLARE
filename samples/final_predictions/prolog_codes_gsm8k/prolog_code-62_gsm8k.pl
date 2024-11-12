% Define the rule to calculate the number of good oranges
number_of_good_oranges(TotalOranges, GoodOranges) :-
UnripeOranges is round(TotalOranges * 0.20),  % Calculate the number of unripe oranges
NotGoodOranges is 1 + UnripeOranges + 2,       % Calculate the total number of not good oranges
GoodOranges is TotalOranges - NotGoodOranges.  % Calculate the number of good oranges
% Query to find the number of good oranges in the basket
query_number_of_good_oranges(GoodOranges) :-
number_of_good_oranges(25, GoodOranges).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_number_of_good_oranges(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).