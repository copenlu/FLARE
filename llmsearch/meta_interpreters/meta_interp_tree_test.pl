% Define some facts and rules for demonstration
fact(a).
fact(b).
fact(c).
related(X, Y) :- fact(X), fact(Y), X \= Y.

% Handling built-in predicates
builtin(Goal) :-
    memberchk(Goal, [X=Y, X\=Y, X<Y, X>Y, X>=Y, X=<Y, number(X), write(X), nl]).

% Evaluate built-ins directly
evaluate_builtin(X = Y) :- X = Y.
evaluate_builtin(X \= Y) :- X \= Y.
evaluate_builtin(X < Y) :- X < Y.
evaluate_builtin(X > Y) :- X > Y.
evaluate_builtin(X >= Y) :- X >= Y.
evaluate_builtin(X =< Y) :- X =< Y.
evaluate_builtin(number(X)) :- number(X).
evaluate_builtin(write(X)) :- write(X).
evaluate_builtin(nl) :- nl.

% Meta-interpreter with built-in handling
solve(true, _) :- !.
solve((Goal1, Goal2), Depth) :- !,
    solve(Goal1, Depth),
    solve(Goal2, Depth).
solve(Goal, Depth) :-
    builtin(Goal), !,
    tab(Depth), format('Call built-in: ~w~n', [Goal]),
    evaluate_builtin(Goal),
    tab(Depth), format('Exit built-in: ~w~n', [Goal]).
solve(Goal, Depth) :-
    clause(Goal, Body),
    NewDepth is Depth + 1,
    tab(Depth), format('Call: ~w~n', [Goal]),
    solve(Body, NewDepth),
    tab(Depth), format('Exit: ~w~n', [Goal]).

% Query handler
query(Goal) :-
    format('Starting query: ~w~n', [Goal]),
    solve(Goal, 0),
    format('Query succeeded: ~w~n', [Goal]).
query(Goal) :-
    format('Query failed: ~w~n', [Goal]), fail.

% Example queries for testing
% ?- query((fact(X), related(X, Y))).
% ?- query(fact(a)).
