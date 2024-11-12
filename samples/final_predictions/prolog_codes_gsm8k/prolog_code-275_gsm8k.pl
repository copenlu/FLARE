% Predicate to calculate the total cost of newspaper ads
% Params: NumNewspaperAds, CostPerNewspaperAd, TotalCostNewspaperAds
total_cost_newspaper_ads(NumNewspaperAds, CostPerNewspaperAd, TotalCostNewspaperAds) :-
TotalCostNewspaperAds is NumNewspaperAds * CostPerNewspaperAd.
% Predicate to calculate the total cost of television ads
% Params: NumTelevisionAds, CostPerTelevisionAd, TotalCostTelevisionAds
total_cost_television_ads(NumTelevisionAds, CostPerTelevisionAd, TotalCostTelevisionAds) :-
TotalCostTelevisionAds is NumTelevisionAds * CostPerTelevisionAd.
% Predicate to calculate the total amount spent on buying all the ads
% Params: TotalCostNewspaperAds, TotalCostTelevisionAds, TotalCostAllAds
total_cost_all_ads(TotalCostNewspaperAds, TotalCostTelevisionAds, TotalCostAllAds) :-
TotalCostAllAds is TotalCostNewspaperAds + TotalCostTelevisionAds.
% Main predicate to compute the total amount spent on buying all ads
% Params: TotalCostAllAds
calculate_total_cost_ads(TotalCostAllAds) :-
% Constants
NumNewspaperAds = 50,
CostPerNewspaperAd = 5,
NumTelevisionAds = 15,
CostPerTelevisionAd = 75,
% Calculate total cost of newspaper ads
total_cost_newspaper_ads(NumNewspaperAds, CostPerNewspaperAd, TotalCostNewspaperAds),
% Calculate total cost of television ads
total_cost_television_ads(NumTelevisionAds, CostPerTelevisionAd, TotalCostTelevisionAds),
% Calculate total amount spent on all ads
total_cost_all_ads(TotalCostNewspaperAds, TotalCostTelevisionAds, TotalCostAllAds).
% Query predicate to get the total amount spent on buying all ads
query(TotalCostAllAds) :-
calculate_total_cost_ads(TotalCostAllAds).
% Uncomment the following line to run the query
% query(TotalCostAllAds).
%query(TotalCostAllAds).