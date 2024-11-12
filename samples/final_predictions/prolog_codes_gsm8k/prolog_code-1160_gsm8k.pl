% Define the earnings of Valerie, her brother, and their mother
valerie_earnings(5000).  % Valerie earns $5000 per month
brother_earnings(10000).  % Brother earns twice what Valerie earns, so $10000 per month
mother_earnings(15000).  % Mother earns twice the combined salary of Valerie and her brother, so $15000 per month
% Calculate the total earnings of Valerie, her brother, and their mother
total_earnings(Total) :-
valerie_earnings(Valerie),
brother_earnings(Brother),
mother_earnings(Mother),
Total is Valerie + Brother + Mother.
% Query predicate to run the program and get the result
query(Total) :-
total_earnings(Total).
% Uncomment the following line to run the query
% ?- query(Total).
%query(Total).