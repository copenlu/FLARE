% Define the age of James
age(james, 10).
% Define the relationships between the ages of the children
age_difference(amy, jackson, 5).
age_difference(amy, corey, 2).
age_difference(james, corey, 1).
% Calculate the age of Jackson
calculate_age_jackson(JacksonAge) :-
age(james, JamesAge),
age_difference(james, corey, CoreyJamesDiff),
CoreyAge is JamesAge + CoreyJamesDiff,
age_difference(amy, corey, AmyCoreyDiff),
AmyAge is CoreyAge - AmyCoreyDiff,
age_difference(amy, jackson, AmyJacksonDiff),
JacksonAge is AmyAge - AmyJacksonDiff.
% Query to find Jackson's age
query(JacksonAge) :-
calculate_age_jackson(JacksonAge).
% Uncomment the following line to run the query and calculate Jackson's age
% ?- query(JacksonAge).
%query(JacksonAge).