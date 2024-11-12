% Define the total number of crayons Nik has
total_crayons(200).
% Define the weight of each crayon and each box in ounces
weight_per_crayon(1).
weight_per_box(8).
% Define the conversion factor from ounces to pounds
ounces_per_pound(16).
% Calculate the total weight of the crayons
total_weight_crayons(TotalCrayons, WeightCrayons) :-
weight_per_crayon(WeightPerCrayon),
WeightCrayons is TotalCrayons * WeightPerCrayon.
% Calculate the total weight of the boxes
total_weight_boxes(TotalCrayons, WeightBoxes) :-
weight_per_box(WeightPerBox),
crayons_per_box(CrayonsPerBox),  % Assumed atom/predicate
TotalBoxes is TotalCrayons // CrayonsPerBox,
WeightBoxes is TotalBoxes * WeightPerBox.
% Calculate the total weight in pounds
total_weight_pounds(TotalWeightPounds) :-
total_crayons(TotalCrayons),
total_weight_crayons(TotalCrayons, WeightCrayons),
total_weight_boxes(TotalCrayons, WeightBoxes),
TotalWeightOunces is WeightCrayons + WeightBoxes,
ounces_per_pound(OuncesPerPound),
TotalWeightPounds is TotalWeightOunces / OuncesPerPound.
% Query predicate to run the program and get the result
query(TotalWeightPounds) :-
total_weight_pounds(TotalWeightPounds).
% Uncomment the following line to run the query
% ?- query(TotalWeightPounds).
%query(TotalWeightPounds).