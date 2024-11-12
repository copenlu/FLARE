% Define the rule to calculate the total number of attendees
total_attendees(Total) :-
EmailInvitees = 100,         % Assumed atom: Number of people invited via email
FriendsPerInvitee = 2,       % Assumed atom: Number of friends each invitee will bring
AlexFriends = 10,            % Assumed atom: Number of friends Alex personally invited
Spouses = 8,                 % Assumed atom: Number of spouses accompanying Alex's friends
Total is EmailInvitees + (EmailInvitees * FriendsPerInvitee) + AlexFriends + Spouses.
% Query to find the total number of attendees and seats needed
query_total_seats_needed(Total) :-
total_attendees(Total).
% Define a predicate that returns the correct numerical answer when queried
query(SeatsNeeded) :-
query_total_seats_needed(SeatsNeeded).
% Uncomment the following line to run the query
% ?- query(SeatsNeeded).
%query(SeatsNeeded).