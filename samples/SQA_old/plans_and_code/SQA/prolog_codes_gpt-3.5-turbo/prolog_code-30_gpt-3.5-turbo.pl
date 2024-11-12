% Facts
sin(greed).
sin(pride).
sin(lust).
sin(envy).
sin(gluttony).
sin(wrath).
sin(sloth).
% Assumed atom/predicate
sin_impact(greed, 80).
sin_impact(pride, 70).
sin_impact(lust, 60).
sin_impact(envy, 50).
sin_impact(gluttony, 40).
sin_impact(wrath, 30).
sin_impact(sloth, 20).
% Predicates
more_prevalent(Sin1, Sin2, Result) :-
sin_impact(Sin1, Value1),
sin_impact(Sin2, Value2),
(Value1 > Value2 -> Result = Sin1; Result = Sin2).
rank_sins(ListOfSinsRanked) :-
findall(Value-Sin, sin_impact(Sin, Value), Pairs),
sort(1, @>=, Pairs, SortedPairs),
pairs_values(SortedPairs, ListOfSinsRanked).
% Query predicate
query :-
more_prevalent(greed, pride, Result),
rank_sins(ListOfSinsRanked).
%query.