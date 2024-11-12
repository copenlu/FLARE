% Predicate to calculate total number of hot dogs prepared based on assumption
total_hotdogs_prepared(Guests, Hotdogs) :-
Hotdogs is (Guests // 2) * 2.
% Predicate to calculate total number of hot dogs needed for all guests to have a second hot dog
total_hotdogs_needed(Guests, Hotdogs) :-
Hotdogs is Guests * 2.
% Predicate to calculate number of guests who did not receive a second hot dog
guests_without_second_hotdog(PreparedHotdogs, NeededHotdogs, GuestsWithout) :-
GuestsWithout is PreparedHotdogs - NeededHotdogs.
% Main predicate to calculate the number of guests who did not receive a second hot dog
hotdog_guests(Guests, GuestsWithout) :-
total_hotdogs_prepared(Guests, PreparedHotdogs),
total_hotdogs_needed(Guests, NeededHotdogs),
guests_without_second_hotdog(PreparedHotdogs, NeededHotdogs, GuestsWithout).
% Query to find out how many guests did not receive a second hot dog
query(GuestsWithout) :-
hotdog_guests(40, GuestsWithout).
% Uncomment the following line to run the query
% ?- query(GuestsWithout).
%query(GuestsWithout).