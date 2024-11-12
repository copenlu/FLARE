% Define predicates for calculating the number of trees planted on each day
trees_planted_first_day(WhiteOak, LodgepolePine) :-
WhiteOak = 20,
LodgepolePine is 2 * WhiteOak.
trees_planted_second_day(WhiteOak, LodgepolePine) :-
WhiteOak = 10 + 20, % 10 more White Oak trees planted on the second day
LodgepolePine is (1/4 + 1) * 40. % 1/4 more Lodgepole Pine trees planted on the second day
% Define a predicate to calculate the total number of trees planted over two days
total_trees_planted(Total) :-
trees_planted_first_day(WhiteOak1, LodgepolePine1),
trees_planted_second_day(WhiteOak2, LodgepolePine2),
Total is WhiteOak1 + LodgepolePine1 + WhiteOak2 + LodgepolePine2.
% Query predicate to run the program and get the total number of trees planted
query(Total) :-
total_trees_planted(Total).
% Uncomment the line below to run the query in SWI-Prolog
% query(Total).
%query(Total).