% Define the rule to calculate the distance run by Ahito
ahito_distance(AmberDistance, TotalDistance, AhitoDistance) :-
MicahDistance is 3.5 * AmberDistance,  % Calculate the distance run by Micah
TotalAmberMicahDistance is AmberDistance + MicahDistance,  % Calculate the total distance run by Amber and Micah
AhitoDistance is TotalDistance - TotalAmberMicahDistance.  % Calculate the distance run by Ahito
% Query to find the distance run by Ahito when Amber ran 8 miles and the total distance is 52 miles
query_ahito_distance(AhitoDistance) :-
ahito_distance(8, 52, AhitoDistance).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_ahito_distance(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).