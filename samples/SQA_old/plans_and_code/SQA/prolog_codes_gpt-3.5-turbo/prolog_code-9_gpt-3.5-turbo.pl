% Assumed atom/predicate
patient(1, 'Jon Brower Minnoch', 'obesity', 635).
patient(2, 'Jane Doe', 'anorexia nervosa', 45).
ask_condition(Condition) :-
format('Enter the medical condition to search for: '),
patient(_, Name, Condition, Weight),
format('~w weighs ~w kg and has condition ~w~n', [Name, Weight, Condition]).
query :- ask_condition(Condition).
%query.