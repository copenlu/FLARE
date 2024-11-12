% Define the hauling capacity of Gissela's truck
gissela_capacity(4000).
% Calculate the hauling capacity of Gordy's truck based on Gissela's capacity
gordy_capacity(GordyCapacity) :-
gissela_capacity(GisselaCapacity),
GordyCapacity is GisselaCapacity + 800.
% Calculate the total hauling capacity when all three trucks are combined
total_capacity(11600).
% Calculate the hauling capacity of Gary's truck
hauling_capacity(GaryCapacity) :-
gissela_capacity(GisselaCapacity),
gordy_capacity(GordyCapacity),
total_capacity(TotalCapacity),
GaryCapacity is TotalCapacity - GisselaCapacity - GordyCapacity.
% Query predicate to find the hauling capacity of Gary's truck
query(GaryCapacity) :-
hauling_capacity(GaryCapacity).
% Uncomment the line below to run the query
% query(GaryCapacity).
%query(GaryCapacity).