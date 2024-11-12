% Define the predicate to calculate the number of individual sunflowers sold per day
individual_sunflowers_sold(DailyRevenue, SunflowersSold) :-
SunflowersSold is DailyRevenue / 2.
% Define the predicate to calculate the number of bouquets sold per day
bouquets_sold(DailyRevenue, BouquetsSold) :-
BouquetsSold is DailyRevenue / 8.
% Define the predicate to calculate the total number of sunflowers sold per day
total_sunflowers_sold(DailyRevenue, TotalSunflowersSold) :-
individual_sunflowers_sold(DailyRevenue, IndividualSunflowers),
bouquets_sold(DailyRevenue, Bouquets),
TotalSunflowersSold is IndividualSunflowers + (Bouquets * 12).
% Define the predicate to calculate the total number of sunflowers sold after 3 days
total_sunflowers_sold_3_days(TotalSunflowersSold) :-
total_sunflowers_sold(26, TotalSunflowersDay1),  % Revenue from individual sunflowers per day
total_sunflowers_sold(56, TotalSunflowersDay2),  % Revenue from bouquets per day
TotalSunflowersSold is (TotalSunflowersDay1 + TotalSunflowersDay2) * 3.
% Query predicate to run the program and get the result
query(TotalSunflowersSold) :-
total_sunflowers_sold_3_days(TotalSunflowersSold).
% Uncomment the following line to run the query
% ?- query(TotalSunflowersSold).
%query(TotalSunflowersSold).