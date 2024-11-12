% Define the number of blue birds in each tree
blue_birds(7).
blue_birds(7).
blue_birds(7).
blue_birds(4).
blue_birds(4).
blue_birds(3).
% Define a predicate to calculate the total number of blue birds in all trees
total_blue_birds(Total) :- findall(X, blue_birds(X), BlueBirdsList), sum_list(BlueBirdsList, Total).
% Query predicate to run the program and get the result
query(Total) :- total_blue_birds(Total).
% Uncomment the following line to run the query
% ?- query(Total).
%query(Total).