% Define the predicate to calculate total steps during walks
total_steps_walks(WalksSteps) :-
WalksSteps is (10000 / 2) + 1000.
% Define the predicate to calculate remaining steps before jog
remaining_steps_before_jog(TotalSteps, RemainingBeforeJog) :-
total_steps_walks(WalksSteps),
RemainingBeforeJog is TotalSteps - WalksSteps.
% Define the predicate to calculate steps taken during jog
jog_steps(RemainingBeforeJog, RemainingAfterJog, JogSteps) :-
RemainingAfterJog is 2000,
JogSteps is RemainingBeforeJog - RemainingAfterJog.
% Main predicate to calculate the number of steps Elliott took during his jog
elliott_jog(JogSteps) :-
remaining_steps_before_jog(10000, RemainingBeforeJog),
jog_steps(RemainingBeforeJog, 2000, JogSteps).
% Query to find out how many steps Elliott took during his jog
query(JogSteps) :-
elliott_jog(JogSteps).
% Uncomment the following line to run the query
% ?- query(JogSteps).
%query(JogSteps).