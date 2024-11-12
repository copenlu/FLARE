kingdom(animalia).
phylum(chordata).
class(aves).
class(mammalia).
order(casuariiformes).
order(cetartiodactyla).
family(dromaiidae).
family(cervidae).
genus(dromaius).
genus(cervus).
species(emu, dromaius_novaehollandiae).
species(elk, cervus_canadensis).
animal(emu, [animalia, chordata, aves, casuariiformes, dromaiidae, dromaius, dromaius_novaehollandiae]).
animal(elk, [animalia, chordata, mammalia, cetartiodactyla, cervidae, cervus, cervus_canadensis]).
find_classification(Animal, Classification) :-
animal(Animal, Classification).
compare_animals(Animal1, Animal2) :-
find_classification(Animal1, Class1),
find_classification(Animal2, Class2),
(Class1 == Class2 -> true ; true).
query_relationship :-
compare_animals(emu, elk).
% Driver Predicate
query :- query_relationship.
%query.