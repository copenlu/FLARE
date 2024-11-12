% Define Voldemort's primary abilities
voldemort_ability(spellcasting).
voldemort_ability(dark_arts).
voldemort_ability(flight).
voldemort_ability(telepathy).
voldemort_ability(telekinesis).
% Define the Silence effect
silence_effect(spellcasting, disabled).
% Define Voldemort's non-magical combat skills
voldemort_non_magical_skills(intimidation).
voldemort_non_magical_skills(strategy).
% Define Voldemort's adaptability to non-magical combat
voldemort_adaptability(high). % Assumed atom/predicate
% Define the impact of Silence on Voldemort
impact_of_silence(Voldemort, Ability, Impact) :-
silence_effect(Ability, disabled),
voldemort_ability(Ability),
Impact = disabled.
% Check if Voldemort has any non-disabled abilities
non_disabled_abilities(Voldemort, Abilities) :-
findall(Ability, (voldemort_ability(Ability), \+ impact_of_silence(Voldemort, Ability, disabled)), Abilities).
% Evaluate Voldemort's effectiveness when silenced
voldemort_effectiveness_when_silenced(Effectiveness) :-
non_disabled_abilities(voldemort, Abilities),
(Abilities \= [] -> Effectiveness = effective; Effectiveness = ineffective).
% Evaluate Voldemort's use of non-magical skills
voldemort_use_non_magical_skills(Effectiveness) :-
findall(Skill, voldemort_non_magical_skills(Skill), Skills),
(Skills \= [] -> Effectiveness = effective; Effectiveness = ineffective).
% Combine evaluations to determine overall combat effectiveness
voldemort_overall_effectiveness_when_silenced(OverallEffectiveness) :-
voldemort_effectiveness_when_silenced(MagicalEffectiveness),
voldemort_use_non_magical_skills(NonMagicalEffectiveness),
(MagicalEffectiveness = effective; NonMagicalEffectiveness = effective),
voldemort_adaptability(Adaptability),
(Adaptability = high -> OverallEffectiveness = effective; OverallEffectiveness = ineffective).
% Query to run the program
query :-
voldemort_overall_effectiveness_when_silenced(OverallEffectiveness),
OverallEffectiveness = effective.
% Uncomment the line below to run the query
 :- query.
%query.