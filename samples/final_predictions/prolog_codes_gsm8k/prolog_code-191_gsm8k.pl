% Define a predicate to calculate the total straw distribution among the rodents
total_straw_distribution(Rats, Hamsters, Rabbits, TotalStraw) :-
Rats * 6 + Hamsters * 5 + Rabbits * 20 =:= TotalStraw.
% Define a predicate to calculate the number of rats in each cage
calculate_rats_in_cage(TotalStraw, RatsInCage) :-
total_straw_distribution(Rats, _, _, TotalStraw),  % Assumed atom/predicate
RatsInCage is TotalStraw / (Rats * 6).
% Define a query predicate to find out the number of rats in each cage
query(RatsInCage) :-
calculate_rats_in_cage(160, RatsInCage).  % Total straw distributed is 160
% Uncomment the line below to run the query in SWI-Prolog
% query(RatsInCage).
%query(RatsInCage).