% Facts
symptom(patient, blue_lips).
symptom(patient, shortness_of_breath).
condition(patient, cold_environment).
% Rules
disease(altitude_sickness) :- symptom(patient, blue_lips), symptom(patient, shortness_of_breath), condition(patient, high_altitude).
disease(hypothermia) :- symptom(patient, blue_lips), condition(patient, cold_environment).
% Query Predicate
query :- disease(Disease), write(Disease), nl, fail.
query.
%query.