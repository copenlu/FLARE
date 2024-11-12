% Assumed atom/predicate
easy_climb_threshold(500).
% Define mountains
mountain('Mount Everest', 8848).
mountain('Mount Wycheproof', 148).
% Add more mountains here...
% Predicate to check if a mountain is an easy climb
easy_climb(Mountain) :-
mountain(Mountain, Height),
easy_climb_threshold(Threshold),
Height < Threshold.
% User query interface
is_easy_climb(Mountain) :-
(   easy_climb(Mountain)
->  format('~w is an easy climb for Edmund Hillary.~n', [Mountain])
;   format('~w is not an easy climb for Edmund Hillary.~n', [Mountain])).
% Driver predicate for querying
query :-
is_easy_climb('Mount Everest'),
is_easy_climb('Mount Wycheproof').
%query.