best_first_solve(Goal) :-
    best_first_solve([(Goal, 0)]).

best_first_solve([(Goal, _)|_]) :-
    call(Goal).
best_first_solve([(_, H)|Rest]) :-
    findall((X, HX), (clause(Goal, X), heuristic(X, HX)), Children),
    append(Rest, Children, NewQueue),
    sort(2, @=<, NewQueue, SortedQueue),
    best_first_solve(SortedQueue).

% take into attention that we need to implement the heuristic/2 predicate

% best_first_solve(query).
