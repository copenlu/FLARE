unemployed_1933(12800000).
tiger_stadium_capacity(52416).
can_fit_in_stadium :-
unemployed_1933(Unemployed),
tiger_stadium_capacity(Capacity),
Unemployed =< Capacity.
check_fit :-
unemployed_1933(Unemployed),
tiger_stadium_capacity(Capacity),
(   Unemployed =< Capacity
->  true
;   Excess is Unemployed - Capacity,
format('Tiger Stadium is short by ~d seats.', [Excess])
).
query :- check_fit.
%query.