% Define the rule to calculate the total water cost per year
total_water_cost_per_year(TotalCost) :-
GallonsPerLoad = 20,        % Assumed atom: Gallons used per load
LoadsPerWeek = 2,           % Assumed atom: Number of loads per week
WeeksInYear = 52,           % Assumed atom: Number of weeks in a year
CostPerGallon = 0.15,       % Assumed atom: Cost per gallon of water
TotalGallonsPerYear is GallonsPerLoad * LoadsPerWeek * WeeksInYear,
TotalCost is TotalGallonsPerYear * CostPerGallon.
% Query to find the total amount spent on water for laundry in a year
query(TotalCost) :-
total_water_cost_per_year(TotalCost).
% Uncomment the following line to run the query
% ?- query(TotalCost).
%query(TotalCost).