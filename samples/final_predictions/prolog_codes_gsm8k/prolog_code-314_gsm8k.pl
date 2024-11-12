% Define the rule to calculate the number of loaves sold in the morning
morning_sales(TotalLoaves, MorningSales) :-
MorningSales is TotalLoaves * 2 // 3.
% Define the rule to calculate the number of loaves remaining after morning sales
remaining_loaves(TotalLoaves, MorningSales, RemainingLoaves) :-
RemainingLoaves is TotalLoaves - MorningSales.
% Define the rule to calculate the number of loaves sold in the afternoon
afternoon_sales(RemainingLoaves, AfternoonSales) :-
AfternoonSales is RemainingLoaves // 2.
% Define the rule to calculate the total number of loaves sold in the afternoon
loaves_sold_afternoon(TotalLoaves, AfternoonSales) :-
morning_sales(TotalLoaves, MorningSales),
remaining_loaves(TotalLoaves, MorningSales, RemainingLoaves),
afternoon_sales(RemainingLoaves, AfternoonSales).
% Query predicate to run the program and get the result
query(AfternoonSales) :-
loaves_sold_afternoon(60, AfternoonSales).
% Uncomment the following line to run the query
% ?- query(AfternoonSales).
%query(AfternoonSales).