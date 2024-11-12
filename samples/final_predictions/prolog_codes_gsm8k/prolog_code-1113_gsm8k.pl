% Define the prices of the bikes
price(mtb, 500).
price(bmx, BMXPrice) :- price(mtb, MTBPrice), BMXPrice is MTBPrice / 2.
price(trekking, 450).
% Calculate the total earnings
total_earnings(TotalEarnings) :-
TotalBikesSold is 300,
price(mtb, MTBPrice),
price(bmx, BMXPrice),
price(trekking, TrekkingPrice),
TotalTrekking is TotalBikesSold / 2,
TotalBMX is 0.15 * TotalBikesSold,
TotalMTB is TotalBikesSold - TotalTrekking - TotalBMX,
TotalEarnings is (TotalMTB * MTBPrice) + (TotalBMX * BMXPrice) + (TotalTrekking * TrekkingPrice).
% Query to find the total earnings
query(TotalEarnings) :-
total_earnings(TotalEarnings).
% Uncomment the following line to run the query
% ?- query(TotalEarnings).
%query(TotalEarnings).