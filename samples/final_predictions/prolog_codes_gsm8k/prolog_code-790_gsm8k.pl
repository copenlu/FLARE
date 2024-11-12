% Define the rule to calculate the price at which Bennet should sell each ear of corn
corn_price(TotalRevenue, NumCorn, CornPrice) :-
EggplantRevenue is 20 * 3,  % Calculate the revenue from selling eggplants
RemainingRevenue is TotalRevenue - EggplantRevenue,  % Calculate the remaining revenue needed
CornPrice is RemainingRevenue / NumCorn.  % Calculate the price at which each ear of corn should be sold
% Query to find the price at which Bennet should sell each ear of corn to make $75 in total revenue
query_corn_price(CornPrice) :-
corn_price(135, 25, CornPrice).
% Define a predicate that returns the correct numerical answer when queried
query(CornPrice) :-
query_corn_price(CornPrice).
% Uncomment the following line to run the query
% ?- query(CornPrice).
%query(CornPrice).