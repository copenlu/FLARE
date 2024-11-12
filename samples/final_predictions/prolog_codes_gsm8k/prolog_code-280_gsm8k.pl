% Define rule to calculate stitches for the collar
collar_stitches(TotalStitches, CollarStitches) :-
CollarStitches is TotalStitches // 10.
% Define rule to calculate stitches for the rosette
rosette_stitches(CollarStitches, RosetteStitches) :-
RosetteStitches is CollarStitches * 2.
% Define rule to calculate stitches for the body
body_stitches(TotalStitches, CollarStitches, RosetteStitches, BodyStitches) :-
BodyStitches is TotalStitches - CollarStitches - RosetteStitches.
% Define rule to calculate stitches for each sleeve
sleeve_stitches(TotalStitches, BodyStitches, CollarStitches, RosetteStitches, SleeveStitches) :-
SleeveStitches is TotalStitches - BodyStitches - CollarStitches - RosetteStitches.
% Given total stitches for the sweater
total_stitches(1800).
% Calculate stitches for each part of the sweater
:- total_stitches(Total),
collar_stitches(Total, Collar),
rosette_stitches(Collar, Rosette),
body_stitches(Total, Collar, Rosette, Body),
sleeve_stitches(Total, Body, Collar, Rosette, Sleeves).
% Query predicate to get the number of stitches for each sleeve
query(Sleeves).
% Uncomment the following line to run the query
% query(Sleeves).
%query(Sleeves).