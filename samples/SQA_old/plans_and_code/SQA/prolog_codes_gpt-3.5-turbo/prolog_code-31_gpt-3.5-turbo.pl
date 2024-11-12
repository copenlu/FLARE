% Assumed atom/predicate
trait(peter, impulsive).
trait(peter, irresponsible).
expertise_requirements(brewing, [patient, precise, knowledgeable, dedicated]).
is_expert(Character, Field) :-
expertise_requirements(Field, Traits),
all_traits_present(Character, Traits).
all_traits_present(_, []).
all_traits_present(Character, [Trait|OtherTraits]) :-
trait(Character, Trait),
all_traits_present(Character, OtherTraits.
% Query predicate
query :- is_expert(peter, brewing).
%query.