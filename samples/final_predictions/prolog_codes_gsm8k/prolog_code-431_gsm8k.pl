% Define the rule for calculating total capital
total_capital(InitialCapital, AmountBank1, AmountBank2, Total) :-
Total is InitialCapital + AmountBank1 + AmountBank2.
% Define the values for the initial capital, amount from first bank, and amount from second bank
% Assumed atom/predicate: InitialCapital = 5000, AmountBank1 = 4000, AmountBank2 = 8000
% Define a predicate to execute the specific query with given values
query(Total) :-
total_capital(5000, 4000, 8000, Total).
% Uncomment the line below to run the query
% ?- query(Total).
%query(Total).