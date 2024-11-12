% Define the initial inventory of glasses and plates sent by Jeff
initial_inventory(96, 48).
% Define the number of broken glasses and plates
broken_items(10, 6).
% Calculate the remaining inventory of glasses and plates
remaining_inventory(GlassesRemaining, PlatesRemaining) :-
initial_inventory(InitialGlasses, InitialPlates),
broken_items(BrokenGlasses, BrokenPlates),
GlassesRemaining is InitialGlasses - BrokenGlasses,
PlatesRemaining is InitialPlates - BrokenPlates.
% Query predicate to find the number of glasses and plates Jeff has now
query(GlassesRemaining, PlatesRemaining) :-
remaining_inventory(GlassesRemaining, PlatesRemaining).
% Uncomment the line below to run the query
% query(GlassesRemaining, PlatesRemaining).
%query(GlassesRemaining, PlatesRemaining).