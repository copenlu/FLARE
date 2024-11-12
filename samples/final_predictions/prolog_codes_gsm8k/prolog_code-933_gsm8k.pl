% Define the rule to calculate the total number of acres the two farms have together
total_acres(FarmerBrownAcres, FarmerSmithAcres, TotalAcres) :-
FarmerSmithAcres is 2 * FarmerBrownAcres + 100,  % Calculate the size of Farmer Smith's farm
TotalAcres is FarmerBrownAcres + FarmerSmithAcres.  % Calculate the total number of acres
% Query to find the total number of acres the two farms have together
query_total_acres(TotalAcres) :-
total_acres(200, FarmerSmithAcres, TotalAcres).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_acres(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).