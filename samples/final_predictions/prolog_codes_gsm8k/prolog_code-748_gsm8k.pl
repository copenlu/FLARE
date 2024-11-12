% Define the number of gum pieces Parker chews per day
gum_pieces_per_day(4).
% Define the number of gum pieces in a pack
gum_pieces_per_pack(15).
% Calculate the total gum consumption in 30 days
total_gum_consumption(GumPerDay, Days, TotalConsumption) :-
TotalConsumption is GumPerDay * Days.
% Calculate the number of packs needed to cover the total consumption
packs_needed(TotalConsumption, GumPerPack, PacksNeeded) :-
PacksNeeded is ceil(TotalConsumption / GumPerPack).
% Query predicate to find the number of packs Parker needs for 30 days
query(PacksNeeded) :-
gum_pieces_per_day(GumPerDay),
total_gum_consumption(GumPerDay, 30, TotalConsumption),
gum_pieces_per_pack(GumPerPack),
packs_needed(TotalConsumption, GumPerPack, PacksNeeded).
% Uncomment the line below to run the query
% query(PacksNeeded).
%query(PacksNeeded).