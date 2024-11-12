% Define the rule to calculate the number of votes received by the loser
votes_received(WinnerVotes, TotalVotes, LoserVotes) :-
LoserVotes is TotalVotes - WinnerVotes.
% Given values
TotalVotes = 80,  % Total number of votes
WinnerVotes is (3/4) * TotalVotes,  % Votes received by the winner
% Calculate the number of votes received by the loser
votes_received(WinnerVotes, TotalVotes, LoserVotes).
% Define a query predicate to find out the number of votes the loser received
query(LoserVotes) :-
votes_received(WinnerVotes, TotalVotes, LoserVotes).
% Uncomment the line below to run the query in SWI-Prolog
% query(LoserVotes).
%query(LoserVotes).