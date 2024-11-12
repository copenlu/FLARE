% Define the ascent predicate which calculates the height gained during ascent
ascent(Time, Rate, Height) :-
Height is Time * Rate.
% Define the descent predicate which calculates the height lost during descent
descent(Time, Rate, Height) :-
Height is Time * Rate.
% Define the balloon_ride predicate to calculate the highest elevation reached
balloon_ride(HighestElevation) :-
ascent(15, 50, Ascent1),  % Jo-Bob pulls the chain for 15 minutes, ascent rate 50 feet/minute
descent(10, 10, Descent1),  % Jo-Bob releases the chain for 10 minutes, descent rate 10 feet/minute
ascent(15, 50, Ascent2),  % Jo-Bob pulls the chain again for 15 minutes, ascent rate 50 feet/minute
HighestElevation is Ascent1 - Descent1 + Ascent2.
% Query predicate to run the program and get the result
query(HighestElevation) :-
balloon_ride(HighestElevation).
% Uncomment the following line to run the query
% ?- query(HighestElevation).
%query(HighestElevation).