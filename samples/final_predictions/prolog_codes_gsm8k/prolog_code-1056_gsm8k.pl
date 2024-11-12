% Define the probabilities for each scenario
% Assumed atom/predicate: substitute_teacher_chance(50), extension_chance(40), personal_extension_chance(20).
substitute_teacher_chance(50).
extension_chance(40).
personal_extension_chance(20).
% Predicate to calculate the overall chance of turning in homework
% Params: ChanceToTurnInHomework
chance_to_turn_in_homework(ChanceToTurnInHomework) :-
substitute_teacher_chance(SubstituteChance),
extension_chance(ExtensionChance),
personal_extension_chance(PersonalExtensionChance),
% Calculate the probability of not having a substitute teacher
NoSubstituteChance is 100 - SubstituteChance,
% Calculate the probability of not getting an extension if the normal teacher is present
NoExtensionChance is 100 - ExtensionChance,
% Calculate the overall probability of turning in homework
ChanceToTurnInHomework is (SubstituteChance / 100) +
(NoSubstituteChance / 100) * (ExtensionChance / 100) +
(NoSubstituteChance / 100) * (NoExtensionChance / 100) * (PersonalExtensionChance / 100).
% Query predicate to get the overall chance of turning in homework
query(ChanceToTurnInHomework) :-
chance_to_turn_in_homework(ChanceToTurnInHomework).
% Uncomment the following line to run the query
% query(ChanceToTurnInHomework).
%query(ChanceToTurnInHomework).