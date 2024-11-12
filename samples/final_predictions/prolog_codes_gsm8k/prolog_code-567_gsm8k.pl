% Define the total bottles needed based on the number of guests and bottles per guest
total_bottles_needed(Guests, BottlesPerGuest, TotalNeeded) :-
TotalNeeded is Guests * BottlesPerGuest.
bottles_bill_has(Cases, BottlesPerCase, TotalHas) :-
TotalHas is Cases * BottlesPerCase.
% Define the additional bottles needed by finding the difference between total needed and total Bill has
additional_bottles_needed(Guests, BottlesPerGuest, Cases, BottlesPerCase, AdditionalNeeded) :-
total_bottles_needed(Guests, BottlesPerGuest, TotalNeeded),
bottles_bill_has(Cases, BottlesPerCase, TotalHas),
AdditionalNeeded is TotalNeeded - TotalHas.
% Query predicate to find the number of additional bottles needed
query(AdditionalNeeded) :-
Guests = 70,  % Assumed number of guests
BottlesPerGuest = 2,  % Assumed number of bottles per guest
Cases = 2,  % Assumed number of cases of water
BottlesPerCase = 24,  % Assumed number of bottles per case
additional_bottles_needed(Guests, BottlesPerGuest, Cases, BottlesPerCase, AdditionalNeeded).
% Uncomment the line below to run the query
% query(AdditionalNeeded).
%query(AdditionalNeeded).