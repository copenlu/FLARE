% Predicate to calculate total money spent on chips and candy bars
total_spent(Chips, CandyBars, Total) :-
Total is Chips * 0.40 + CandyBars * 0.75.
% Predicate to calculate remaining money after buying chips
remaining_money(Total, Chips, Remaining) :-
Remaining is Total - Chips * 0.40.
% Predicate to determine how many candy bars can be bought with the remaining money
candy_bars_purchasable(Remaining, CandyBars) :-
CandyBars is Remaining // 0.75.
% Main predicate to calculate the number of candy bars George can buy
george_candy_bars(Chips, CandyBars) :-
total_spent(3, CandyBars, 5),
remaining_money(5, 3, Remaining),
candy_bars_purchasable(Remaining, CandyBars).
% Query to find out how many candy bars George can buy after buying 3 bags of chips
query(CandyBars) :-
george_candy_bars(3, CandyBars).
% Uncomment the following line to run the query
% ?- query(CandyBars).
%query(CandyBars).