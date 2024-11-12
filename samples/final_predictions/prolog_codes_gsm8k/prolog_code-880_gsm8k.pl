% Define the tip amount received by each customer
tip_amount(20).
% Calculate the total tips received by Rafaela
tips_rafaela(TotalTipsRafaela) :-
tip_amount(TipAmount),
TotalCustomers = 40,
TotalTipsRafaela is TipAmount * TotalCustomers.
% Calculate the total tips received by Julieta (10% less than Rafaela)
tips_julieta(TotalTipsRafaela, TotalTipsJulieta) :-
ReductionPercentage = 10,
ReductionAmount is TotalTipsRafaela * ReductionPercentage / 100,
TotalTipsJulieta is TotalTipsRafaela - ReductionAmount.
% Calculate the total tips received altogether by Rafaela and Julieta
total_tips(TotalTipsRafaela, TotalTipsJulieta, TotalTipsAltogether) :-
TotalTipsAltogether is TotalTipsRafaela + TotalTipsJulieta.
% Query predicate to find the total tips received by Rafaela and Julieta altogether
query(TotalTipsAltogether) :-
tips_rafaela(TotalTipsRafaela),
tips_julieta(TotalTipsRafaela, TotalTipsJulieta),
total_tips(TotalTipsRafaela, TotalTipsJulieta, TotalTipsAltogether).
% Uncomment the line below to run the query
% query(TotalTipsAltogether).
%query(TotalTipsAltogether).