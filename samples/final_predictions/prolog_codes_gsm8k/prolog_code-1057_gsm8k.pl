% Define the rule to calculate the number of tickets each graduate can receive
calculate_tickets_per_graduate(TicketsPerGraduate) :-
TotalReservedSeats is 950 + 300,  % Calculate the total reserved seats for graduates and faculty
AvailableSeats is 6000 - TotalReservedSeats,  % Calculate the number of available seats for friends and family
TotalGraduates is 950,  % Assumed atom/predicate: Total number of graduates
TicketsPerGraduate is AvailableSeats // TotalGraduates.  % Calculate the number of tickets each graduate can receive
% Query to find the number of tickets each graduate can receive
query(TicketsPerGraduate) :-
calculate_tickets_per_graduate(TicketsPerGraduate).
% Uncomment the following line to run the query
% ?- query(TicketsPerGraduate).
%query(TicketsPerGraduate).