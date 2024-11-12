% Define properties of lemons and dyspepsia
lemon_properties(acidic).
dyspepsia_symptoms(indigestion, bloating, nausea, heartburn).
% Define the effect of acidic foods on dyspepsia
effect_of_acidic_foods_on_dyspepsia(Acidic, Symptom, Exacerbate) :-
lemon_properties(Acidic),
dyspepsia_symptoms(Symptom),
(Acidic == acidic -> Exacerbate = yes; Exacerbate = no).
% Define individual sensitivity to acidic foods
individual_sensitivity(Person, Acidic, Sensitive) :-
person_condition(Person, Condition),
(Condition == gerd; Condition == ulcers),
lemon_properties(Acidic),
(Acidic == acidic -> Sensitive = yes; Sensitive = no).
% Assumed conditions for individuals
person_condition(john, gerd).  % Assumed atom/predicate
person_condition(mary, normal). % Assumed atom/predicate
% Define dietary patterns and their effect on dyspepsia
dietary_impact(Person, Food, Impact) :-
individual_sensitivity(Person, acidic, Sensitive),
(Sensitive == yes, Food == lemons -> Impact = negative;
Impact = neutral).
% Evaluate the general advice for people with dyspepsia regarding lemons
general_advice(Person, Advice) :-
dietary_impact(Person, lemons, Impact),
(Impact == negative -> Advice = avoid_lemons;
Advice = consume_carefully).
% Define a query to check if a person should avoid lemons based on their condition and the properties of lemons
should_avoid_lemons(Person, Avoid) :-
general_advice(Person, Advice),
(Advice == avoid_lemons -> Avoid = true; Avoid = false).
% Query to evaluate the program
query :-
should_avoid_lemons(john, Avoid),
Avoid = true.
% Uncomment the following line to run the query
 :- query.
%query.