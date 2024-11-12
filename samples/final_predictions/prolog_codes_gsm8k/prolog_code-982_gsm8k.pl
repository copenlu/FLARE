% Define the rule to calculate the actual number of attendees
original_attendees(CourtneyReported, ActualAttendees) :-
ActualAttendees is CourtneyReported / 1.20.
% Calculate the actual number of attendees
% Courtney reported 48 attendees
% ?- original_attendees(48, ActualAttendees).
% Predicate to encapsulate the entire calculation and output the actual number of attendees
calculate_actual_attendees(ActualAttendees) :-
original_attendees(48, ActualAttendees).  % Courtney reported 48 attendees
% Query to find the actual number of attendees at the concert
query(ActualAttendees) :-
calculate_actual_attendees(ActualAttendees).
% Uncomment the following line to run the query
% ?- query(ActualAttendees).
%query(ActualAttendees).