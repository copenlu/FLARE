% Predicate to calculate ore mined per day based on the tool type
% Params: ToolType, OreMinedPerDay
ore_mined_per_day(bare_hands, 12).
ore_mined_per_day(iron_pickaxe, 24).
ore_mined_per_day(steel_pickaxe, 36).
% Predicate to calculate total ore mined in a month
% Params: ToolType, DaysInMonth, TotalOreMinedInMonth
total_ore_mined_in_month(ToolType, DaysInMonth, TotalOreMinedInMonth) :-
ore_mined_per_day(ToolType, OreMinedPerDay),
TotalOreMinedInMonth is OreMinedPerDay * DaysInMonth.
% Predicate to calculate total ore mined by a group of dwarves in a month
% Params: NumDwarves, ToolType, DaysInMonth, TotalOreMinedByGroup
total_ore_mined_by_group(NumDwarves, ToolType, DaysInMonth, TotalOreMinedByGroup) :-
total_ore_mined_in_month(ToolType, DaysInMonth, TotalOreMinedPerDwarf),
TotalOreMinedByGroup is TotalOreMinedPerDwarf * NumDwarves.
% Main predicate to compute the total ore mined by 40 dwarves with steel pickaxes in a month
% Params: TotalOreMined
calculate_total_ore_mined(TotalOreMined) :-
NumDwarves = 40,
ToolType = steel_pickaxe,
DaysInMonth = 30,
total_ore_mined_by_group(NumDwarves, ToolType, DaysInMonth, TotalOreMined).
% Query predicate to get the total ore mined by 40 dwarves with steel pickaxes in a month
query(TotalOreMined) :-
calculate_total_ore_mined(TotalOreMined).
% Uncomment the following line to run the query
% query(TotalOreMined).
%query(TotalOreMined).