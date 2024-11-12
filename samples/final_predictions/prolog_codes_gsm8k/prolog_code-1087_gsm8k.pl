% Define the rule to calculate Betsy's part length
betsys_part_length(BetsysPartLength) :-
DonovanPartLength is (98 - 18) / 2,  % Calculate Donovan's part length
BetsysPartLength is DonovanPartLength + 18.  % Calculate Betsy's part length
% Query to find Betsy's part length
query(BetsysPartLength) :-
betsys_part_length(BetsysPartLength).
% Uncomment the following line to run the query
% ?- query(BetsysPartLength).
%query(BetsysPartLength).