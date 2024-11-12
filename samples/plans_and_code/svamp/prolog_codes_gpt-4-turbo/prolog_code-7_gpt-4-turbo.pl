% Define the rule to calculate the final number of toys Shawn has
total_toys(InitialToys, ToysFromMom, ToysFromDad, FinalToys) :-
TotalReceived is ToysFromMom + ToysFromDad,  % Calculate total toys received from parents
FinalToys is InitialToys + TotalReceived.    % Sum initial toys and received toys to get the final count
% Predicate to run the query and return the result
query(FinalToys) :-
total_toys(5, 2, 2, FinalToys).  % Using the given values: 5 initial toys, 2 from mom, 2 from dad
% Uncomment the following line to run the query in SWI-Prolog
% ?- query(FinalToys).
%query(FinalToys).