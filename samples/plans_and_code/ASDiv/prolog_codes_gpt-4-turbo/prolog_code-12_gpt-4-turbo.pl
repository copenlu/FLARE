% Define the total number of students in the class
total_students(60).
% Calculate the number of votes required to win (3/4 of total students)
votes_required(TotalStudents, VotesRequired) :-
VotesRequired is TotalStudents * 3 // 4.
% Calculate the votes Alec initially secured (1/2 of total students)
initial_votes(TotalStudents, InitialVotes) :-
InitialVotes is TotalStudents // 2.
% Calculate the votes from students initially undecided but considering Alec (assumed known)
undecided_votes(5).  % Assumed number of initially undecided but considering Alec
% Calculate the additional votes from non-considering students after campaigning (1/5 of non-considering)
additional_campaign_votes(TotalStudents, InitialVotes, UndecidedVotes, AdditionalVotes) :-
NonConsidering is TotalStudents - InitialVotes - UndecidedVotes,
AdditionalVotes is NonConsidering // 5.
% Calculate the total current votes Alec has after all campaigning
total_current_votes(TotalStudents, TotalCurrentVotes) :-
initial_votes(TotalStudents, InitialVotes),
undecided_votes(UndecidedVotes),
additional_campaign_votes(TotalStudents, InitialVotes, UndecidedVotes, AdditionalCampaignVotes),
TotalCurrentVotes is InitialVotes + UndecidedVotes + AdditionalCampaignVotes.
% Calculate how many more votes Alec needs to reach his goal
votes_needed(TotalStudents, VotesNeeded) :-
votes_required(TotalStudents, VotesRequired),
total_current_votes(TotalStudents, TotalCurrentVotes),
VotesNeeded is VotesRequired - TotalCurrentVotes.
% Query predicate to find the number of additional votes Alec needs
query(VotesNeeded) :-
total_students(TotalStudents),
votes_needed(TotalStudents, VotesNeeded).
% Uncomment the line below to run the query
% query(VotesNeeded).
%query(VotesNeeded).