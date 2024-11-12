# print Yes instead of true and No instead of false.

solve(true, _) :- 
    write('YES'), !.

solve(false, _) :- 
    write('NO'), !.

solve(Goal, Visited) :-
    \+ member(Goal, Visited),  % Check if Goal has been visited before
    clause(Goal, Body),        % Find a clause for Goal
    solve(Body, [Goal|Visited]).  % Recurse into the body with updated visited list

% solve(query, []).