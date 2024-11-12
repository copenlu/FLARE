% Base case: true always succeeds, display the path with formatted output.
solve(true, Path) :-
    reverse(Path, RevPath),
    maplist(term_string, RevPath, StringPath),
    atomic_list_concat(StringPath, ' -> ', ResultPath),
    format('Success: ~w\n', [ResultPath]),
    !.

% Handling conjunctions explicitly.
solve((Goal1, Goal2), Path) :- !,
    solve(Goal1, [Goal1|Path]),
    solve(Goal2, Path).

% For user-defined predicates where clauses can be retrieved.
solve(Goal, Path) :-
    (  predicate_property(Goal, built_in)  % Checks if Goal is a built-in predicate
    -> call(Goal),  % Directly call the built-in predicate
       append(Path, [Goal], NewPath),
       reverse(NewPath, RevPath),
       maplist(term_string, RevPath, StringPath),
       atomic_list_concat(StringPath, ' -> ', ResultPath),
       format('Success (built-in): ~w\n', [ResultPath])
    ;  clause(Goal, Body),  % Retrieve the clause for user-defined predicates
       solve(Body, [Goal|Path])
    ).

% Handling failure when no clauses are found and the goal is not built-in.
solve(Goal, Path) :-
    \+ predicate_property(Goal, built_in),
    \+ clause(Goal, _),
    reverse(Path, RevPath),
    maplist(term_string, RevPath, StringPath),
    atomic_list_concat(StringPath, ' -> ', ResultPath),
    format('Fail: ~w\n', [ResultPath]),
    fail.


% solve(query, [query]).