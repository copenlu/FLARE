% Define the predicate to calculate the remaining number of toys Argo has
% Params: InitialToys, ToysAlyssa, ToysBonnie, ToysNicky, RemainingToys
remaining_toys(InitialToys, ToysAlyssa, ToysBonnie, ToysNicky, RemainingToys) :-
RemainingToys is InitialToys - ToysAlyssa - ToysBonnie - ToysNicky.
% Query predicate to get the remaining number of toys Argo has
query(RemainingToys) :-
remaining_toys(200, 40, 80, 30, RemainingToys).
% Uncomment the following line to run the query
% ?- query(RemainingToys).
%query(RemainingToys).