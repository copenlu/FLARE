% Define constants
cost_cd(4).
total_amount(48).
cost_per_cd(Cost) :- cost_cd(Cost).
% Calculate the number of CDs Tom could have bought without the headphone set
calculate_cds_without_headphone_set(NumCDs) :-
total_amount(Total),
cost_cd(CDCost),
cost_per_cd(CostPerCD),
CostHeadphoneSet is Total - CDCost,
NumCDs is CostHeadphoneSet // CostPerCD - 1.
% Query to calculate how many more CDs Tom could have bought without the headphone set
query(NumCDs) :-
calculate_cds_without_headphone_set(NumCDs).
% Uncomment the following line to run the query and calculate the number of CDs
% ?- query(NumCDs).
%query(NumCDs).