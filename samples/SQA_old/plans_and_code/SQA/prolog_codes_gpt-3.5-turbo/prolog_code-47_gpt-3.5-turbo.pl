% Facts about number of episodes Teri Hatcher starred in each show
episodes(desperate_housewives, 180).
episodes(lois_and_clark, 87).
% Rule to check if episode count of Desperate Housewives is twice that of Lois & Clark
twice_as_many(Series1, Series2) :-
episodes(Series1, Count1),
episodes(Series2, Count2),
Count1 is 2 * Count2.
% Query predicate to check the condition
query :-
twice_as_many(desperate_housewives, lois_and_clark).
%query.