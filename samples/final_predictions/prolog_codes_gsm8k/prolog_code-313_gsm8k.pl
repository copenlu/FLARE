% Define the rule for calculating the number of people John lost to
people_lost_to(TotalMatches, PercentageWon, MatchesLost) :-
MatchesWon is PercentageWon / 100 * TotalMatches,
MatchesLost is TotalMatches - MatchesWon.
% Define a predicate to execute the specific query with given values
query(MatchesLost) :-
people_lost_to(20, 80, MatchesLost).
% Uncomment the line below to run the query
% ?- query(MatchesLost).
%query(MatchesLost).