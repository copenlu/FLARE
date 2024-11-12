% Define the number of birds nesting in the bushes
birds_nesting(Nesting) :- Nesting is 6.
% Define the number of birds flying overhead based on the number nesting
birds_overhead(Nesting, Overhead) :- Overhead is 2*Nesting/3.
% Define the number of birds feeding in three groups
birds_feeding(Feeding) :- Feeding is 3*8.
% Define the total number of birds counted by Jerry
total_birds_counted(Total) :-
birds_nesting(Nesting),
birds_overhead(Nesting, Overhead),
birds_feeding(Feeding),
Total is Nesting + Overhead + Feeding.
% Query predicate to run the program and get the result
query(Total) :-
total_birds_counted(Total).
% Uncomment the following line to run the query
% ?- query(Total).
%query(Total).