% Facts about scripts
script(gujarati, phonetic, brahmic, 'Gujarat, India').
script(kanji, logographic, han, 'Japan').
% Comparison predicate
compare_scripts(Script1, Script2, Aspect, Comparison) :-
script(Script1, Type1, Family1, Usage1),
script(Script2, Type2, Family2, Usage2),
compare_aspect(Aspect, Type1, Type2, Family1, Family2, Usage1, Usage2, Comparison).
% Aspect comparison rules
compare_aspect(type, Type1, Type2, _, _, _, _, Comparison) :-
(Type1 = Type2 -> Comparison = same_type; Comparison = different_type).
compare_aspect(family, _, _, Family1, Family2, _, _, Comparison) :-
(Family1 = Family2 -> Comparison = same_family; Comparison = different_family).
compare_aspect(usage, _, _, _, _, Usage1, Usage2, Comparison) :-
(Usage1 = Usage2 -> Comparison = same_usage; Comparison = different_usage).
% Query predicate
query :- compare_scripts(gujarati, kanji, type, Comparison),
compare_scripts(gujarati, kanji, family, Comparison),
compare_scripts(gujarati, kanji, usage, Comparison).
%query.