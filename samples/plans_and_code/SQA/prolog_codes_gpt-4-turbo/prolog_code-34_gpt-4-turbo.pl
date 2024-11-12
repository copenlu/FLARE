% Define dietary preferences
dietary_preference(cyndi_lauper, vegan). % Assumed atom/predicate based on common celebrity trends
% Define common milk substitutes
milk_substitute(almond_milk).
milk_substitute(soy_milk).
milk_substitute(oat_milk).
% Define conditions under which someone might use a milk substitute
uses_milk_substitute(Person) :-
dietary_preference(Person, vegan); % Vegan would use milk substitute
dietary_preference(Person, lactose_intolerant). % Lactose intolerant would use milk substitute
% Define a predicate to check if a specific milk substitute is likely to be used
likely_milk_substitute(Person, Milk) :-
uses_milk_substitute(Person),
milk_substitute(Milk).
% Define the main query to check if Cyndi Lauper would use a milk substitute in her rice pudding
query :-
likely_milk_substitute(cyndi_lauper, _).
% Uncomment the following line to run the query in a Prolog environment
 :- query.
%query.