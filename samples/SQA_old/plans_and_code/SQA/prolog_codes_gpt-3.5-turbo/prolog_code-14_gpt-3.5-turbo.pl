% Define rainbow colors
rainbow_colors([red, orange, yellow, green, blue, indigo, violet]).
% Define Gabon flag colors
gabon_flag_colors([green, yellow, blue]).
% Check if a color is in the rainbow
color_in_rainbow(Color) :-
rainbow_colors(Rainbow),
member(Color, Rainbow).
% Report the status of each Gabon flag color
report_gabon_colors :-
gabon_flag_colors(Colors),
member(Color, Colors),
(   color_in_rainbow(Color)
->  format('~w is in the rainbow.~n', [Color])
;   format('~w is not in the rainbow.~n', [Color])
),
fail.
report_gabon_colors.
% Assumed atom/predicate
query :- report_gabon_colors.
%query.