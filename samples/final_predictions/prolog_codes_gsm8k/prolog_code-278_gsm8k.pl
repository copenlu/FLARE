% Predicate to calculate the total number of windows in each house
% Params: NumBedrooms, NumWindowsPerBedroom, NumAdditionalWindows, TotalWindows
total_windows_in_house(NumBedrooms, NumWindowsPerBedroom, NumAdditionalWindows, TotalWindows) :-
TotalWindows is NumBedrooms * NumWindowsPerBedroom + NumAdditionalWindows.
% Predicate to calculate the total number of windows in both houses
% Params: NumHouses, TotalWindowsPerHouse, TotalWindowsBothHouses
total_windows_in_both_houses(NumHouses, TotalWindowsPerHouse, TotalWindowsBothHouses) :-
TotalWindowsBothHouses is NumHouses * TotalWindowsPerHouse.
% Main predicate to compute the total number of windows in both houses
% Params: TotalWindowsBothHouses
calculate_total_windows(TotalWindowsBothHouses) :-
% Constants
NumBedrooms = 3,
NumWindowsPerBedroom = 2,
NumAdditionalWindows = 4,
NumHouses = 2,
% Calculate total windows in each house
total_windows_in_house(NumBedrooms, NumWindowsPerBedroom, NumAdditionalWindows, TotalWindowsPerHouse),
% Calculate total windows in both houses
total_windows_in_both_houses(NumHouses, TotalWindowsPerHouse, TotalWindowsBothHouses).
% Query predicate to get the total number of windows in both houses
query(TotalWindowsBothHouses) :-
calculate_total_windows(TotalWindowsBothHouses).
% Uncomment the following line to run the query
% query(TotalWindowsBothHouses).
%query(TotalWindowsBothHouses).