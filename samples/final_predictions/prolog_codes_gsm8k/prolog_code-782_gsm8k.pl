% Define the total number of cases of shingles needed for all three houses
total_shingles_needed(250).
% Calculate the number of cases of shingles needed for the third house
shingles_needed(ThirdHouseShingles) :-
total_shingles_needed(TotalShingles),
SecondHouseShingles is TotalShingles / 3,  % Let X be the amount of shingles needed for the second house
ThirdHouseShingles is 2 * (SecondHouseShingles / 2).  % Calculate the amount of shingles needed for the third house
% Query predicate to find the number of cases of shingles needed for the third house
query(ThirdHouseShingles) :-
shingles_needed(ThirdHouseShingles).
% Uncomment the line below to run the query
% query(ThirdHouseShingles).
%query(ThirdHouseShingles).