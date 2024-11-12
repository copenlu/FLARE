% Define the total number of people on the council
total_council_members(33).
% Calculate the number of votes in favor of the new regulation
votes_in_favor(VotesInFavor) :-
total_council_members(TotalMembers),
VotesAgainst is TotalMembers / 3,  % Calculate the number of votes against the regulation
VotesInFavor is VotesAgainst * 2.  % Calculate the number of votes in favor
% Query predicate to find the number of votes in favor
query(VotesInFavor) :-
votes_in_favor(VotesInFavor).
% Uncomment the line below to run the query
% ?- query(VotesInFavor).
%query(VotesInFavor).