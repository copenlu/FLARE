% Define the rule to calculate the total number of customers counted over three days
count_customers(FirstDay, SecondDay, ThirdDay) :-
SecondDay is FirstDay + 50,  % Sloane counts 50 more customers on the second day
ThirdDay is 500 - FirstDay - SecondDay.  % Total customers counted over three days is 500
% Query predicate to run the program and get the result
query(ThirdDay) :-
count_customers(100, SecondDay, ThirdDay).  % Sloane counts 100 customers on the first day
% Uncomment the following line to run the query
% ?- query(ThirdDay).
%query(ThirdDay).