% Define the number of flowers planted per day
flowers_per_day(2).
% Calculate the total number of flowers grown in 15 days
total_flowers_grown(TotalGrown) :-
flowers_per_day(PlantedPerDay),
TotalGrown is PlantedPerDay * 15.
% Calculate the final count of flowers after accounting for those that did not grow
final_flower_count(NotGrown, FinalCount) :-
total_flowers_grown(TotalGrown),
FinalCount is TotalGrown - NotGrown.
% Query to calculate the final count of flowers after 15 days
query(FinalCount) :-
final_flower_count(5, FinalCount).
% Uncomment the following line to run the query and calculate the final count of flowers
% ?- query(FinalCount).
%query(FinalCount).