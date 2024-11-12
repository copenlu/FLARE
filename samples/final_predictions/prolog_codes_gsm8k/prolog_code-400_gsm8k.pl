% Predicate to calculate the total number of gifts Monica has
total_gifts(Total) :- Total is 6 + 4 + 2.
% Predicate to calculate the total number of gift bows needed
total_bows(TotalGifts, TotalBows) :- total_gifts(TotalGifts), TotalBows is TotalGifts.
% Predicate to calculate the length of ribbon per gift bow
ribbon_per_bow(TotalRibbon, TotalBows, RibbonPerBow) :- RibbonPerBow is TotalRibbon / TotalBows.
% Main predicate to calculate the length of ribbon per gift bow
calculate_ribbon_per_bow(TotalRibbon, RibbonPerBow) :-
total_bows(TotalGifts, TotalBows),
ribbon_per_bow(TotalRibbon, TotalBows, RibbonPerBow).
% Query predicate to find out the length of ribbon per gift bow with 144 inches of ribbon
query(RibbonPerBow) :-
calculate_ribbon_per_bow(144, RibbonPerBow).
% Uncomment the following line to run the query
% ?- query(RibbonPerBow).
%query(RibbonPerBow).