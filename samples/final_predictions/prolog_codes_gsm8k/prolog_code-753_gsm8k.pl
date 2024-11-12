% Define the total number of voters
total_voters(100).
% Calculate the number of votes candidate A received (20% of total voters)
votes_for_A(TotalVoters, VotesA) :-
VotesA is round(0.20 * TotalVoters).
% Calculate the number of votes candidate B received (50% more than candidate A)
votes_for_B(TotalVoters, VotesB) :-
votes_for_A(TotalVoters, VotesA),
VotesB is VotesA + round(0.50 * VotesA).
% Calculate the number of votes candidate C received (remaining votes)
votes_for_C(TotalVoters, VotesC) :-
votes_for_A(TotalVoters, VotesA),
votes_for_B(TotalVoters, VotesB),
VotesC is TotalVoters - (VotesA + VotesB).
% Query predicate to find the number of votes candidate C received
query(VotesC) :-
total_voters(TotalVoters),
votes_for_C(TotalVoters, VotesC).
% Uncomment the line below to run the query
% query(VotesC).
%query(VotesC).