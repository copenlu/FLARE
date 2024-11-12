% Define the rule to calculate the time taken for the journey back
travel_time_back(Distance, Speed, Time) :-
Time is Distance / Speed.
% Query to find the time taken for Tom to travel back from point B to point A
query_travel_time_back(Time) :-
Distance = 1, % Assuming the distance between points A and B is 1 mile
Speed = 6,    % Tom's speed while traveling back
travel_time_back(Distance, Speed, Time).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_travel_time_back(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).