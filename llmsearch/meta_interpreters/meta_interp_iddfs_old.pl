iddfs_solve(Goal) :-
    between(1, infinite, Depth),
    ddfs_solve(Goal, Depth).

ddfs_solve(Goal, Depth) :-
    ddfs_solve(Goal, Depth, []).

ddfs_solve(Goal, 0, _) :-
    call(Goal).
ddfs_solve(Goal, Depth, Visited) :-
    Depth > 0,
    clause(Goal, Body),
    NewDepth is Depth - 1,
    \+ member(Goal, Visited),
    ddfs_solve(Body, NewDepth, [Goal|Visited]).

% iddfs_solve(query).