% Define predicates for the number of kernels popping in each 30-second interval
kernels_popped(30, 20).
kernels_popped(30, Pop) :- kernels_popped(30, 20), Pop is 3 * 20.
kernels_popped(30, Pop) :- kernels_popped(30, Pop1), Pop is 4 * Pop1.
kernels_popped(30, Pop) :- kernels_popped(30, Pop1), Pop is Pop1 / 2.
% Define a rule to calculate the total number of kernels popped during cooking
total_kernels_popped(Total) :-
findall(Pop, kernels_popped(30, Pop), Pops),
sum_list(Pops, Total).
% Define a rule to calculate the number of kernels popped from residual heat
kernels_from_residual(Pop) :- kernels_popped(30, Pop1), Pop is Pop1 / 4.
% Define a rule to calculate the total number of pieces of popcorn to eat
total_popcorn_to_eat(TotalPopcorn) :-
total_kernels_popped(CookingPopcorn),
kernels_from_residual(ResidualPopcorn),
TotalPopcorn is CookingPopcorn + ResidualPopcorn.
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
total_popcorn_to_eat(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).