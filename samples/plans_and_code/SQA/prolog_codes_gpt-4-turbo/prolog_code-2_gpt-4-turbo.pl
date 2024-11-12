% Define the basic taxonomy for organisms
organism(emu, bird, dromaiidae, casuariiformes).
organism(elk, mammal, cervidae, artiodactyla).
% Define characteristics of classes
class(bird, feathers, lay_eggs, warm_blooded).
class(mammal, hair_or_fur, live_birth, warm_blooded).
% Define evolutionary history
evolutionary_path(bird, vertebrates, aves).
evolutionary_path(mammal, vertebrates, mammalia).
% Check if two organisms are in the same class
same_class(Organism1, Organism2) :-
organism(Organism1, Class1, _, _),
organism(Organism2, Class2, _, _),
Class1 = Class2.
% Check if two organisms are in the same family
same_family(Organism1, Organism2) :-
organism(Organism1, _, Family1, _),
organism(Organism2, _, Family2, _),
Family1 = Family2.
% Check if two organisms are related (same class or family)
are_related(Organism1, Organism2) :-
same_class(Organism1, Organism2);
same_family(Organism1, Organism2).
% Main query to determine if emus and elks are related
query :-
\+ are_related(emu, elk).
% Uncomment the line below to run the query
 :- query.
%query.