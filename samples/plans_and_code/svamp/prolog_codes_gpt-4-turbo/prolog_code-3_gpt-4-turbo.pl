% Define the rule to calculate the number of lollipops given away
give_lollipops(InitialLollipops, FinalLollipops, GivenLollipops) :-
GivenLollipops is InitialLollipops - FinalLollipops.
% Define the initial and final number of lollipops
initial_lollipops(20).  % Assumed atom/predicate for initial lollipops
final_lollipops(12).    % Assumed atom/predicate for final lollipops
% Query to find out how many lollipops were given away
query(GivenLollipops) :-
initial_lollipops(Initial),
final_lollipops(Final),
give_lollipops(Initial, Final, GivenLollipops).
% Uncomment the line below to run the query in a Prolog environment
% ?- query(GivenLollipops).
%query(GivenLollipops).