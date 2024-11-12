% Assumed atom/predicate
mountain(mount_fuji, 3776).
sea(sea_of_japan, 3742).
above_sea_level(Mountain, Sea) :-
mountain(Mountain, MountainHeight),
sea(Sea, SeaDepth),
Difference is MountainHeight - SeaDepth,
Difference > 0.
% User query interface
query :- above_sea_level(mount_fuji, sea_of_japan).
%query.