% Define the weight of Kory's dog (assumed known)
kory_dog_weight(60).  % Assumed weight of Kory's dog
% Calculate the weight of Elijah's first dog (one-fourth the weight of Kory's dog)
weight_elijah_first_dog(KoryWeight, ElijahFirstWeight) :-
ElijahFirstWeight is KoryWeight // 4.
% Calculate the weight of Elijah's second dog (half the weight of Kory's dog)
weight_elijah_second_dog(KoryWeight, ElijahSecondWeight) :-
ElijahSecondWeight is KoryWeight // 2.
% Calculate the total weight of all three dogs
total_weight_all_dogs(KoryWeight, ElijahFirstWeight, ElijahSecondWeight, TotalWeight) :-
TotalWeight is KoryWeight + ElijahFirstWeight + ElijahSecondWeight.
% Query predicate to find the total weight of all three dogs
query(TotalWeight) :-
kory_dog_weight(KoryWeight),
weight_elijah_first_dog(KoryWeight, ElijahFirstWeight),
weight_elijah_second_dog(KoryWeight, ElijahSecondWeight),
total_weight_all_dogs(KoryWeight, ElijahFirstWeight, ElijahSecondWeight, TotalWeight).
% Uncomment the line below to run the query
% query(TotalWeight).
%query(TotalWeight).