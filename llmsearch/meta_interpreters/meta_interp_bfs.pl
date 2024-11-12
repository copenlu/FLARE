bfs_solve(Goal) :-
    bfs_solve([Goal], []).

bfs_solve([], _) :- fail.
bfs_solve([Goal|_], Visited) :-
    call(Goal),
    \+ member(Goal, Visited).
bfs_solve([Goal|Rest], Visited) :-
    findall(X, clause(Goal, X), Xs),
    append(Rest, Xs, NewGoals),
    bfs_solve(NewGoals, [Goal|Visited]).

% bfs_solve(query).