% Define the number of meatballs in one meatball sub sandwich
meatballs_per_sandwich(4).
% Define the predicate to calculate the total number of meatballs in the initial order
total_meatballs_initial_order(TotalMeatballs) :-
meatballs_per_sandwich(MeatballsPerSandwich),
InitialSandwiches is 10 - 3,  % Sidney ordered 3 less than ten sandwiches
TotalMeatballs is MeatballsPerSandwich * InitialSandwiches.
% Define the predicate to calculate the number of meatballs that remained
total_meatballs_remaining(RemainingMeatballs) :-
total_meatballs_initial_order(InitialTotal),
MarkAte is 4,  % Mark ate 4 sandwiches
SidneyOrderedMore is 3,  % Sidney ordered 3 more sandwiches
TotalRemainingSandwiches is InitialTotal + SidneyOrderedMore - MarkAte,
RemainingMeatballs is TotalRemainingSandwiches * meatballs_per_sandwich.
% Query to find the number of meatballs that remained
query(RemainingMeatballs) :-
total_meatballs_remaining(RemainingMeatballs).
% Uncomment the following line to run the query
% ?- query(RemainingMeatballs).
%query(RemainingMeatballs).