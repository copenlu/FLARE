% Define the total number of eggs the farmer has
total_eggs(900).
% Define the number of eggs per tray
eggs_per_tray(30).
% Define the selling price per tray
selling_price_per_tray(2.5).
% Calculate the total number of trays based on the total number of eggs
total_trays(TotalEggs, TotalTrays) :-
TotalTrays is TotalEggs // 30.
% Calculate the total earnings from selling all the trays at the given price
total_earnings(TotalTrays, SellingPrice, TotalEarnings) :-
TotalEarnings is TotalTrays * SellingPrice.
% Calculate the total earnings the farmer will make
calculate_earnings(TotalEggs, SellingPrice, TotalEarnings) :-
total_trays(TotalEggs, TotalTrays),
total_earnings(TotalTrays, SellingPrice, TotalEarnings).
% Query predicate to find the total earnings the farmer will make
query(TotalEarnings) :-
total_eggs(TotalEggs),
selling_price_per_tray(SellingPrice),
calculate_earnings(TotalEggs, SellingPrice, TotalEarnings).
% Uncomment the line below to run the query
% query(TotalEarnings).
%query(TotalEarnings).