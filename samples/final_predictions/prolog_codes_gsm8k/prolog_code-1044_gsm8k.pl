% Define initial number of guests
initial_guests(100).
% Define number of guests opting for early checkout
early_checkout(24).
% Define number of guests opting for late checkout
late_checkout(15).
% Calculate total number of check-ins
check_ins(TotalCheckIns) :-
late_checkout(15),  % Assumed number of guests opting for late checkout
TotalCheckIns is 2 * 15 + 7.  % Calculate total check-ins based on late checkout and additional check-ins after dinner
% Calculate total number of guests in the hotel now
total_guests(TotalGuests) :-
initial_guests(100),  % Assumed initial number of guests
early_checkout(24),  % Assumed number of guests opting for early checkout
late_checkout(15),  % Assumed number of guests opting for late checkout
check_ins(CheckIns),  % Calculate total check-ins
TotalGuests is 100 - 24 - 15 + CheckIns.  % Calculate total number of guests after considering checkouts and check-ins
% Query predicate to find the total number of guests in the hotel now
query(TotalGuests) :-
total_guests(TotalGuests).
% Uncomment the line below to run the query
% query(TotalGuests).
%query(TotalGuests).