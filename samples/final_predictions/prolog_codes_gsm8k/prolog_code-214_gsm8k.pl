% Define the rule to calculate the total number of cakes bought over three days
cakes_bought(Monday, Tuesday, Wednesday, Total) :-
Tuesday is Monday * 3,  % Number of cakes bought on Tuesday is 3 times Monday
Wednesday is Tuesday * 5,  % Number of cakes bought on Wednesday is 5 times Tuesday
Total is Monday + Tuesday + Wednesday.  % Total number of cakes bought over three days
% Query predicate to run the program and get the result
query(Total) :-
cakes_bought(4, _, _, Total).  % Given that Rose bought 4 cakes on Monday
% Uncomment the following line to run the query
% ?- query(Total).
%query(Total).