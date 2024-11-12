% Define the initial number of notebooks Martha had before buying 5 more
martha_initial(Notebooks) :-
Notebooks is 7 - 5.
% Define the initial number of notebooks Joseph had (three times the number Martha had)
joseph_initial(Notebooks) :-
martha_initial(MarthaNotebooks),
Notebooks is 3 * MarthaNotebooks.
% Define the current number of notebooks Martha has after buying 5 more
martha_current(Notebooks) :-
Notebooks is 7.
% Define the predicate to calculate how many more notebooks Martha has than Joseph
notebooks_difference(Difference) :-
martha_current(MarthaNotebooks),
joseph_initial(JosephNotebooks),
Difference is MarthaNotebooks - JosephNotebooks.
% Query predicate to run the program and get the result
query(Difference) :-
notebooks_difference(Difference).
% Uncomment the following line to run the query
% ?- query(Difference).
%query(Difference).