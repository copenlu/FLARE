% Define symptoms of mercury poisoning
symptom(tremors).
symptom(emotional_changes).
symptom(insomnia).
symptom(neuromuscular_changes).
% Define properties of succimer
treats(succimer, mercury_poisoning).
% Historical context of hat-making using mercury
used_mercury(hat_making).
% Define the Mad Hatter's behaviors as seen in the film
behavior(mad_hatter, eccentric).
behavior(mad_hatter, erratic_speech).
behavior(mad_hatter, sudden_mood_swings).
% Mapping behaviors to symptoms of mercury poisoning
behavior_symptom(eccentric, emotional_changes).
behavior_symptom(erratic_speech, neuromuscular_changes).
behavior_symptom(sudden_mood_swings, emotional_changes).
% Check if a character's behaviors match mercury poisoning symptoms
has_mercury_poisoning_symptoms(Character) :-
behavior(Character, Behavior),
behavior_symptom(Behavior, Symptom),
symptom(Symptom).
% Determine if succimer is needed based on symptoms and historical context
needs_succimer(Character, Job) :-
used_mercury(Job),
has_mercury_poisoning_symptoms(Character),
treats(succimer, mercury_poisoning).
% Check if Mad Hatter needs succimer based on his job and symptoms
query :-
needs_succimer(mad_hatter, hat_making).
% Uncomment the line below to run the query
 :- query.
%query.