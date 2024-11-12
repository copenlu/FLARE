% Define the number of watermelons harvested after two months
harvested_after_two_months(TotalMelons, HarvestedMelons) :-
HarvestedMelons is round(0.30 * TotalMelons).
% Define the number of remaining watermelons after two months
remaining_after_two_months(TotalMelons, HarvestedMelons, RemainingMelons) :-
RemainingMelons is TotalMelons - HarvestedMelons.
% Define the number of watermelons harvested after two weeks
harvested_after_two_weeks(RemainingMelons, HarvestedMelons) :-
HarvestedMelons is round(0.75 * RemainingMelons).
NotReadyMelons is TotalMelons - HarvestedMelons.
% Query predicate to run the program and get the result
query(NotReadyMelons) :-
TotalMelons = 120,  % Total number of watermelons
harvested_after_two_months(TotalMelons, Harvested1),
remaining_after_two_months(TotalMelons, Harvested1, Remaining),
harvested_after_two_weeks(Remaining, Harvested2),
% Uncomment the following line to run the query
% ?- query(NotReadyMelons).
%query(NotReadyMelons).