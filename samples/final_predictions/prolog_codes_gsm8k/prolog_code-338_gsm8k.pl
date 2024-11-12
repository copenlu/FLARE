% Define the initial number of lollipops Erin has
initial_lollipops(7).
% Define the number of lollipops Erin's mother gives her
lollipops_from_mother(10).
% Define the number of lollipops Erin gives to Ella
lollipops_given_to_ella(3).
% Define the predicate to calculate the remaining lollipops Erin has
remaining_lollipops(Remaining) :-
initial_lollipops(Initial),  % Get the initial number of lollipops
lollipops_from_mother(Mother),  % Get the number of lollipops from Erin's mother
lollipops_given_to_ella(Ella),  % Get the number of lollipops given to Ella
Remaining is Initial + Mother - Ella.  % Calculate the remaining lollipops
% Query predicate to run the program and get the result
query(Remaining) :-
remaining_lollipops(Remaining).
% Uncomment the following line to run the query
% ?- query(Remaining).
%query(Remaining).