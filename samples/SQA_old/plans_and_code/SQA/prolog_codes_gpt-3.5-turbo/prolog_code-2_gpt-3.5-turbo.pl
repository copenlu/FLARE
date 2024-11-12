historical_figure(george_fox, [pacifism, inner_light, social_justice, anti-violence]).
issue_contrary_beliefs(stoning, [pacifism, anti-violence]).
intersect([], _, []).
intersect([H|T], List, [H|Res]) :- member(H, List), intersect(T, List, Res).
intersect([_|T], List, Res) :- intersect(T, List, Res).
opposes_issue(Figure, Issue) :-
historical_figure(Figure, Beliefs),
issue_contrary_beliefs(Issue, ContraryBeliefs),
intersect(Beliefs, ContraryBeliefs, []).
% Assumed atom/predicate
query :- opposes_issue(george_fox, stoning).
%query.