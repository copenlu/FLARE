% Define the rule to calculate the remaining number of elves
calculate_remaining_elves(InitialElves, RemainingElves) :-
ElvesQuitVomit is InitialElves // 3,  % Calculate the number of elves who quit after children vomit on them
ElvesQuitKick is 10,  % Number of elves who quit after kids kick their shins
RemainingElves is InitialElves - ElvesQuitVomit - ElvesQuitKick.  % Calculate the remaining number of elves
% Query to find the number of elves left after the events
query(RemainingElves) :-
calculate_remaining_elves(60, RemainingElves).  % Initial number of hired elves is 60
% Uncomment the following line to run the query and find out the number of elves left
% ?- query(RemainingElves).
%query(RemainingElves).