% Define the speed of the thingamabob (Assumed value)
speed_thingamabob(1).  % Assumed atom/predicate
% Define the speed of the whatchamacallit based on the speed of the thingamabob
speed_whatchamacallit(SpeedWhatchamacallit, SpeedThingamabob) :-
SpeedWhatchamacallit is 11 * SpeedThingamabob.
% Define the speed of the whirligig based on the speed of the thingamabob
speed_whirligig(SpeedWhirligig, SpeedThingamabob) :-
SpeedWhirligig is 5 * SpeedThingamabob.
% Given speed of the whatchamacallit
speed_whatchamacallit(121, SpeedThingamabob) :-
speed_thingamabob(SpeedThingamabob).
% Query predicate to find the speed of the whirligig
query(SpeedWhirligig) :-
speed_whatchamacallit(121, SpeedThingamabob),
speed_whirligig(SpeedWhirligig, SpeedThingamabob).
% Uncomment the following line to run the query
% ?- query(SpeedWhirligig).
%query(SpeedWhirligig).