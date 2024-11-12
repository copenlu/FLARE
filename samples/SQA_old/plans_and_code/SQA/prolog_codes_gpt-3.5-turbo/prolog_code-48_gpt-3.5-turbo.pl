fish(yellow_perch, freshwater, north_america).
fish(clownfish, saltwater, indo_pacific).
water_body(red_sea, saltwater, middle_east_africa).
water_body(lake_erie, freshwater, north_america).
can_inhabit(Fish, WaterBody) :-
fish(Fish, HabitatType, Region),
water_body(WaterBody, HabitatType, WaterRegion),
overlaps(Region, WaterRegion).
overlaps(north_america, middle_east_africa) :- false.
overlaps(north_america, north_america) :- true.
query(Fish, WaterBody) :-
can_inhabit(Fish, WaterBody).
%query(Fish, WaterBody).