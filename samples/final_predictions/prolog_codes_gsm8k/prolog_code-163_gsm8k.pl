% Calculate the total number of tadpoles Finn can see in the pond
tadpoles_in_pond(InitialCount, TadpolesFromLilyPad, TadpolesUnderRock, TotalVisible) :-
TotalVisible is InitialCount - TadpolesFromLilyPad + TadpolesUnderRock.
% Query to find out how many tadpoles Finn can see in the pond after the events
query(TotalVisible) :-
tadpoles_in_pond(11, 6, 2, TotalVisible).
% Uncomment the following line to run the query and find out the total visible tadpoles in the pond.
% query(TotalVisible).
%query(TotalVisible).