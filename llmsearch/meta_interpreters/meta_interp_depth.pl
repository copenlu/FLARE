% Define the meta-interpreter with a depth limit
solve(true, _, _) :- !.  % Base case: always succeed with true, regardless of depth
solve((Goal1, Goal2), Depth, MaxDepth) :- !,
    solve(Goal1, Depth, MaxDepth),
    solve(Goal2, Depth, MaxDepth).
solve(Goal, Depth, MaxDepth) :-
    Depth < MaxDepth,  % Ensure current depth is within the limit
    clause(Goal, Body),  % Find a clause in the database where Goal is the head
    NextDepth is Depth + 1,  % Increment depth for the next level
    solve(Body, NextDepth, MaxDepth).


