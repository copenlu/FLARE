% Define the total number of people lined up at the polling station
total_people(5000).
% Calculate the number of people who voted by midday (2/5 of total people)
voted_midday(TotalPeople, VotedMidday) :-
VotedMidday is TotalPeople * 2 // 5.
% Calculate the number of people remaining by midday
remaining_midday(TotalPeople, RemainingMidday) :-
voted_midday(TotalPeople, VotedMidday),
RemainingMidday is TotalPeople - VotedMidday.
% Calculate the number of people who voted by 16:00 (2/3 of remaining people)
voted_1600(RemainingMidday, Voted1600) :-
Voted1600 is RemainingMidday * 2 // 3.
% Calculate the number of people who had not voted by 16:00
not_voted_1600(TotalPeople, NotVoted1600) :-
remaining_midday(TotalPeople, RemainingMidday),
voted_1600(RemainingMidday, Voted1600),
NotVoted1600 is RemainingMidday - Voted1600.
% Query predicate to find the number of people who had not voted by 16:00
query(NotVoted1600) :-
total_people(TotalPeople),
not_voted_1600(TotalPeople, NotVoted1600).
% Uncomment the line below to run the query
% query(NotVoted1600).
%query(NotVoted1600).