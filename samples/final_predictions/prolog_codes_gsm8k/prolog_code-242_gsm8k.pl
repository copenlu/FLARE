% Define the full_pens_created predicate to calculate the number of full pens created from empty pens
full_pens_created(EmptyPens, FullPens) :-
FullPens is EmptyPens / 5.
% Define the total_pens predicate to calculate the total number of pens Ram will have
total_pens(RamInitialPens, TotalPens) :-
full_pens_created(RamInitialPens, FullPens),
TotalPens is RamInitialPens + FullPens.
% Query predicate to run the program and get the result
query(TotalPens) :-
total_pens(25, TotalPens).  % Ram initially buys 25 pens
% Uncomment the following line to run the query
% ?- query(TotalPens).
%query(TotalPens).