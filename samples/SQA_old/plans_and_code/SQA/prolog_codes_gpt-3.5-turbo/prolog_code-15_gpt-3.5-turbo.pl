% Define facts
speed(bald_eagle, 160). % Maximum speed of a bald eagle in km/h
speed(b52, 1046). % Maximum speed of a B-52 bomber in km/h
range(bald_eagle, 80). % Maximum range of a bald eagle in km
range(b52, 16000). % Maximum range of a B-52 bomber in km
urgency_threshold(urgent, 500). % Threshold distance for urgent messages in km
% Define rules
can_deliver(bald_eagle, Distance, Urgency) :-
speed(bald_eagle, Speed),
range(bald_eagle, Range),
Distance =< Range,
Urgency =< urgency_threshold(urgent, Threshold),
Speed >= Distance.
can_deliver(b52, Distance, _) :-
speed(b52, Speed),
Distance =< 16000, % Assumed atom/predicate
Speed >= Distance.
% Decision rule
deliver_message(Method, Distance, Urgency) :-
can_deliver(bald_eagle, Distance, Urgency),
Method = bald_eagle.
deliver_message(Method, Distance, Urgency) :-
can_deliver(b52, Distance, Urgency),
Method = b52.
% User Input - Define the query here
query :- deliver_message(Method, 1000, 300).  Query with Distance = 1000 km and Urgency = 300 (assumed)
%query.