% Define initial water levels and leak rate
initial_water_levels(BigInitial, SmallInitial) :-
BigInitial is 4 * SmallInitial,  % Given that the big pool had twice as much water as the small pool initially
BigInitial is 4 * SmallInitial.  % Given that the big pool now has four times as much water as the small pool
leak_rate(4).
% Calculate current water levels after 4 minutes
current_water_levels(BigInitial, SmallInitial, BigCurrent, SmallCurrent) :-
leak_rate(LeakRate),
BigCurrent is BigInitial - (4 * LeakRate * 4),  % 4 minutes have passed
SmallCurrent is SmallInitial - (4 * LeakRate * 4).  % 4 minutes have passed
% Calculate the water level in the small pool now
water_level_small_pool(SmallCurrent) :-
current_water_levels(_, SmallInitial, _, SmallCurrent),  % Use anonymous variables for BigInitial and BigCurrent
SmallCurrent is SmallInitial.
% Query predicate to run the program and get the result
query(SmallCurrent) :-
water_level_small_pool(SmallCurrent).
% Uncomment the following line to run the query
% ?- query(SmallCurrent).
%query(SmallCurrent).