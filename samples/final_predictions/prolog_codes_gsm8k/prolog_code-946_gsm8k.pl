% Define the rule to calculate the number of mint tea cups in each row
mint_tea_cups_in_each_row(MintCups) :-
TotalCups is 27,               % Total number of cups Lana has
TotalRows is 3,                % Total number of rows Lana divides the cups into
TotalCinnamonCups is 15,       % Total cups used for cinnamon tea
TotalMintCups is TotalCups - TotalCinnamonCups,  % Total cups used for mint tea
MintCups is TotalMintCups // TotalRows.          % Calculate mint tea cups in each row
% Query to find the number of mint tea cups in each row
query_mint_tea_cups_in_each_row(MintCups) :-
mint_tea_cups_in_each_row(MintCups).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_mint_tea_cups_in_each_row(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).