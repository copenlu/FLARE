% Define the height of Albert
height_albert(36).
% Define the rule to calculate Anne's height
height_anne(Anne) :-
height_albert(Albert),
Anne is 2 * Albert.
% Define the rule to calculate Jackie's current height
height_jackie_current(JackieCurrent) :-
height_anne(Anne),
JackieCurrent is Anne - 2.
% Define the rule to calculate Jackie's height before the summer
height_jackie_before_summer(JackieBeforeSummer) :-
height_jackie_current(JackieCurrent),
JackieBeforeSummer is JackieCurrent - 3.
% Define a query predicate to find Jackie's height before the summer
query(JackieBeforeSummer) :-
height_jackie_before_summer(JackieBeforeSummer).
% Uncomment the line below to run the query
% ?- query(JackieBeforeSummer).
%query(JackieBeforeSummer).