% Facts about number of outlets
outlets(taco_bell, 7000).
outlets(roy_rogers, 50).
% Average visitors per day per outlet
avg_visitors_per_day(taco_bell, 300).
avg_visitors_per_day(roy_rogers, 150).
% Marketing impact (arbitrary scale 1-10)
marketing_impact(taco_bell, 9).
marketing_impact(roy_rogers, 4).
% Location strategy effectiveness (arbitrary scale 1-10)
location_strategy(taco_bell, 8).
location_strategy(roy_rogers, 5).
% Rule to calculate total visitors per year
annual_visitors(Brand, Visitors) :-
outlets(Brand, NumOutlets),
avg_visitors_per_day(Brand, AvgVisitors),
DaysInYear = 365,
BaseVisitors is NumOutlets * AvgVisitors * DaysInYear,
marketing_impact(Brand, MarketingImpact),
location_strategy(Brand, LocationImpact),
Visitors is BaseVisitors * (MarketingImpact + LocationImpact) / 10.
% Query the System
query :-
annual_visitors(taco_bell, TBVisitors),
annual_visitors(roy_rogers, RRVisitors),
compare(Comp, TBVisitors, RRVisitors).
%query.