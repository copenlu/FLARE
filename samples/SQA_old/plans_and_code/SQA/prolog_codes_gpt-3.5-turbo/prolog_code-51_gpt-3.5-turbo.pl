% Define facts representing historical figures and the countries they represented
represented(christopher_columbus, italy, spain).
represented(marco_polo, italy, china).
represented(ferdinand_magellan, portugal, spain).
% Define predicates for querying the representation details
represented_by(Person, Country) :-
represented(Person, _, Country).
origin_country(Person, Country) :-
represented(Person, Country, _).
different_representation(Person) :-
represented(Person, Origin, Represented),
Origin \= Represented.
list_different_representations :-
findall((Person, Origin, Represented), different_representation(Person), List),
print(List).
% Driver predicate for querying
 query :- list_different_representations.
%query.