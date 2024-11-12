% Define the rule to calculate the number of fish caught by Darren
fish_caught_by_darren(NaomiFish, DarrenFish) :-
DarrenFish is NaomiFish - 6.
% Define the rule to calculate the number of fish caught by Tommy
fish_caught_by_tommy(DarrenFish, TommyFish) :-
TommyFish is DarrenFish + 3.
% Given that Naomi caught 17 fish, find out how many fish Tommy caught
query_tommy_fish(TommyFish) :-
fish_caught_by_darren(17, DarrenFish),
fish_caught_by_tommy(DarrenFish, TommyFish).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_tommy_fish(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).