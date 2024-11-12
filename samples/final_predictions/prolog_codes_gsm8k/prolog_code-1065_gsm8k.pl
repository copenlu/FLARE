% Predicate to calculate the dimensions of the comforter
% Params: BedLength, BedWidth, ComforterLength, ComforterWidth
comforter_dimensions(BedLength, BedWidth, ComforterLength, ComforterWidth) :-
ComforterLength is BedLength + 2,
ComforterWidth is BedWidth + 2.
% Predicate to calculate the area of the comforter
% Params: ComforterLength, ComforterWidth, ComforterArea
comforter_area(ComforterLength, ComforterWidth, ComforterArea) :-
ComforterArea is ComforterLength * ComforterWidth.
% Predicate to calculate the total square footage of fabric needed
% Params: ComforterArea, TotalFabricArea
total_fabric_area(ComforterArea, TotalFabricArea) :-
TotalFabricArea is ComforterArea * 2.  % Two pieces of fabric needed
% Main predicate to compute the total square footage of fabric needed for the comforter
% Params: TotalFabricArea
calculate_fabric_area(TotalFabricArea) :-
% Constants
BedLength = 6,
BedWidth = 8,
% Calculate comforter dimensions
comforter_dimensions(BedLength, BedWidth, ComforterLength, ComforterWidth),
% Calculate comforter area
comforter_area(ComforterLength, ComforterWidth, ComforterArea),
% Calculate total fabric area needed
total_fabric_area(ComforterArea, TotalFabricArea).
% Query predicate to get the total square footage of fabric needed
query(TotalFabricArea) :-
calculate_fabric_area(TotalFabricArea).
% Uncomment the following line to run the query
% query(TotalFabricArea).
%query(TotalFabricArea).