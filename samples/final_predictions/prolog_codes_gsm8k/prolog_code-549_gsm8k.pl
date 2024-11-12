% Define initial number of candies George has after eating 5 candies
george_initial_candies(3).
% Calculate initial number of candies Nick had (twice as many as George)
nick_initial_candies(NickCandies) :-
george_initial_candies(GeorgeCandies),
NickCandies is 2 * GeorgeCandies.
% Calculate current number of candies Nick has (assuming no change in candies)
nick_current_candies(NickCandies) :-
george_initial_candies(GeorgeCandies),
NickCandies is 2 * GeorgeCandies.
% Query predicate to find out how many candies Nick currently has
query(NickCandies) :-
nick_current_candies(NickCandies).
% Uncomment the line below to run the query
% ?- query(NickCandies).
%query(NickCandies).