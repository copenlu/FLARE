% Define the physical states
state(solid).
state(liquid).
state(gas).
% Define substances and their states at room temperature
substance_state(argon, gas).  % Assumed atom
% Define what chewing is applicable to
chewable(solid).
% Check if a substance can be chewed based on its state
can_chew(Substance) :-
substance_state(Substance, State),
chewable(State).
% Define the query to check if argon can be chewed
query :-
can_chew(argon).
% Uncomment the following line to run the query
% ?- query.
% ?- query.