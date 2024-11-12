% Knowledge Base
spaghetti(traditional, contains_gluten).
spaghetti(corn_based, gluten_free).
spaghetti(rice_based, gluten_free).
% Rules
is_safe_for_celiac(Type) :- spaghetti(Type, gluten_free).
% User Interaction
check_safety(Type) :-
is_safe_for_celiac(Type).
% Query
query :-
check_safety(rice_based),
check_safety(traditional),
check_safety(corn_based).
%query.