% Predicate to calculate the number of pupils who like blue
likes_blue(Blue) :- Blue is 40 // 2.
% Predicate to calculate the number of pupils who like green
likes_green(Green, Remaining) :-
likes_blue(Blue),
Remaining is 40 - Blue,
Green is Remaining // 4.
% Predicate to calculate the number of pupils who like yellow
likes_yellow(Remaining, Yellow) :-
likes_green(Green, Remaining),
Yellow is Remaining - Green.
% Main predicate to calculate the number of pupils who like yellow
calculate_yellow(Yellow) :-
likes_yellow(_, Yellow).
% Query predicate to find out how many pupils like the color yellow
query(Yellow) :-
calculate_yellow(Yellow).
% Uncomment the following line to run the query
% ?- query(Yellow).
%query(Yellow).