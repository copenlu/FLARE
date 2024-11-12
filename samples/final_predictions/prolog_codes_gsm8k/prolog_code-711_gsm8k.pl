% Define the ratio of regular chairs to high chairs
ratio_regular_high(5).
% Calculate the total number of chairs needed
calculate_additional_chairs(NumHighChairs, NumAdults, NumBabies, AdditionalChairs) :-
ratio_regular_high(Ratio),
NumRegularChairs is NumHighChairs * Ratio,
TotalChairsAvailable is NumRegularChairs + NumHighChairs,
TotalChairsNeeded is NumAdults + NumBabies,
AdditionalChairs is max(0, TotalChairsNeeded - TotalChairsAvailable).
% Query to calculate the number of additional chairs Mia needs
query(AdditionalChairs) :-
calculate_additional_chairs(8, 42, 15, AdditionalChairs).
% Uncomment the following line to run the query and calculate the number of additional chairs needed
% ?- query(AdditionalChairs).
%query(AdditionalChairs).