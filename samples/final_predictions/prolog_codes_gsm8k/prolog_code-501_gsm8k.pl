% Define the highest temperatures recorded in each country
highest_temperature(southlandia, -48).
highest_temperature(northlandia, 21).
highest_temperature(midlandia, -3).
% Calculate the average highest temperature
average_highest_temperature(Average) :-
highest_temperature(southlandia, TempSouth),
highest_temperature(northlandia, TempNorth),
highest_temperature(midlandia, TempMid),
TotalTemp is TempSouth + TempNorth + TempMid,
Average is TotalTemp / 3.
% Query to calculate the average highest temperature of the three countries
query(Average) :-
average_highest_temperature(Average).
% Uncomment the following line to run the query and calculate the average highest temperature
% ?- query(Average).
%query(Average).