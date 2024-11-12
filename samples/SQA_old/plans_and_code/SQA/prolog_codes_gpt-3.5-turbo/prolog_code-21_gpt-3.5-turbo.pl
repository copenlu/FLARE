% Define facts
mascot(baton_rouge_magnet_high_school, bulldog).
animal_diet(bulldog, kibble).
% Define rules
eats_kibble(School) :-
mascot(School, Animal),
animal_diet(Animal, kibble).
% Query system
does_mascot_eat_kibble(School) :-
eats_kibble(School).
does_mascot_eat_kibble(School) :-
\+ eats_kibble(School).
% Assumed atom/predicate
 query(School) :- does_mascot_eat_kibble(School).
%query(School).