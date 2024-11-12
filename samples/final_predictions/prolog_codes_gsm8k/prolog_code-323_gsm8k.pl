% Define the total number of invited guests
total_invited_guests(Total) :-
FamiliesWith6 = 2,
FamiliesWith4 = 3,
Total is (FamiliesWith6 * 6) + (FamiliesWith4 * 4).
% Define the predicate to calculate the total number of attendees
calculate_attendees(TotalAttendees) :-
total_invited_guests(TotalInvited),
AbsenteesDueToIllness = 8,
AbsenteesWithPriorCommitments is AbsenteesDueToIllness / 4,
TotalAbsentees is AbsenteesDueToIllness + AbsenteesWithPriorCommitments,
TotalAttendees is TotalInvited - TotalAbsentees.
% Query to calculate the total number of attendees
% ?- calculate_attendees(TotalAttendees).
% This should output the total number of people who show up for Martha's party.
query(TotalAttendees) :-
calculate_attendees(TotalAttendees).
% Uncomment the following line to run the query
% ?- query(TotalAttendees).
%query(TotalAttendees).