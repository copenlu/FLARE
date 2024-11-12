% Define the rule to calculate the total number of gems in the chest
total_gems_in_chest(TotalGems) :-
Diamonds = 175,                 % Assumed atom: Number of diamonds
Rubies is Diamonds - 35,        % Calculate the number of rubies
Emeralds is 2 * Rubies,         % Calculate the number of emeralds
TotalGems is Diamonds + Rubies + Emeralds.  % Calculate the total number of gems
% Query to find the total number of gems in the chest
query_total_gems_in_chest(TotalGems) :-
total_gems_in_chest(TotalGems).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_gems_in_chest(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).