% Predicate to calculate the total number of birds attracted by store-bought feeders
birds_attracted_store_bought(StoreBoughtBirds) :-
StoreBoughtBirds is 3 * 20.
% Predicate to calculate the total number of birds attracted by feeders Lillian made
birds_attracted_made(MadeBirds) :-
MadeBirds is 3 * (20 + 10).
% Predicate to calculate the total number of birds in Lillian's garden
total_birds(TotalBirds) :-
birds_attracted_store_bought(StoreBoughtBirds),
birds_attracted_made(MadeBirds),
TotalBirds is StoreBoughtBirds + MadeBirds.
% Main predicate to calculate the total number of birds in Lillian's garden
lillian_birds(TotalBirds) :-
total_birds(TotalBirds).
% Query to find out the total number of birds in Lillian's garden each day
query(TotalBirds) :-
lillian_birds(TotalBirds).
% Uncomment the following line to run the query
% ?- query(TotalBirds).
%query(TotalBirds).