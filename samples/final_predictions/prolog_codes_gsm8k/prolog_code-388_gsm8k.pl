% Define the rule to calculate the total number of socks washed
total_socks_washed(Pairs, Loose, Total) :-
Total is Pairs * 2 + Loose.
% Define the rule to calculate the number of socks missed
socks_missed(TotalWashed, TotalNeeded, Missed) :-
Missed is TotalNeeded - TotalWashed.
% Query to find out how many socks Lindsay has missed washing
query_socks_missed(Missed) :-
TotalNeeded = 50,       % Total number of socks that need washing
PairsWashed = 10,       % Number of pairs of socks washed
LooseWashed = 15,       % Number of loose socks washed
total_socks_washed(PairsWashed, LooseWashed, TotalWashed),
socks_missed(TotalWashed, TotalNeeded, Missed).
% Uncomment the following line to run the query
% ?- query_socks_missed(Missed).
% ?- query_socks_missed(Missed).