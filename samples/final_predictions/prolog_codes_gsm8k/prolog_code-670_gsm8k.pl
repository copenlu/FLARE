% Define the rule to calculate the number of dozens of eggs needed for the party
eggs_needed_for_party(Guests, Eggs) :-
DeviledEggHalves is Guests * 3,      % Calculate total deviled egg halves needed
WholeEggs is DeviledEggHalves / 2,   % Calculate total whole eggs needed
Eggs is WholeEggs / 12.              % Calculate number of dozens of eggs needed
% Query to find the number of dozens of eggs needed for 16 guests
query_eggs_needed_for_party(Eggs) :-
eggs_needed_for_party(16, Eggs).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_eggs_needed_for_party(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).