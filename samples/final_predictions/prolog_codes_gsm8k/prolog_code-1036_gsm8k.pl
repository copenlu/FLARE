% Define the total capacity of the tank
tank_capacity(18000).
% Calculate the water filled by Wanda on the first day (1/4 of tank's capacity)
wanda_day1(WandaDay1) :-
tank_capacity(TankCapacity),
WandaDay1 is TankCapacity // 4.
% Calculate the water filled by Ms. B on the first day (3/4 of Wanda's amount)
msb_day1(WandaDay1, MsBDay1) :-
MsBDay1 is 3 * WandaDay1 // 4.
% Calculate the water filled by Wanda on the second day (2/3 of previous day)
wanda_day2(WandaDay1, WandaDay2) :-
WandaDay2 is 2 * WandaDay1 // 3.
% Calculate the water filled by Ms. B on the second day (1/3 of day 1)
msb_day2(MsBDay1, MsBDay2) :-
MsBDay2 is MsBDay1 // 3.
% Calculate the total water pumped by each person over two days
total_water_pumped(WandaDay1, MsBDay1, WandaDay2, MsBDay2, TotalWaterPumped) :-
TotalWaterPumped is WandaDay1 + MsBDay1 + WandaDay2 + MsBDay2.
% Calculate the remaining gallons needed to fill the tank
remaining_gallons(TotalWaterPumped, RemainingGallons) :-
tank_capacity(TankCapacity),
RemainingGallons is TankCapacity - TotalWaterPumped.
% Query predicate to find the remaining gallons needed to fill the tank
query(RemainingGallons) :-
wanda_day1(WandaDay1),
msb_day1(WandaDay1, MsBDay1),
wanda_day2(WandaDay1, WandaDay2),
msb_day2(MsBDay1, MsBDay2),
total_water_pumped(WandaDay1, MsBDay1, WandaDay2, MsBDay2, TotalWaterPumped),
remaining_gallons(TotalWaterPumped, RemainingGallons).
% Uncomment the line below to run the query
% query(RemainingGallons).
%query(RemainingGallons).