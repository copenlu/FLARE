% Define the number of badges earned per year for each individual
% Assumed atom/predicate: badges_per_year(Individual, Number)
badges_per_year(claire, 12).
badges_per_year(amber, 6).
badges_per_year(wendy, 36).
% Define the predicate to calculate the difference in badges earned between Wendy and Amber
difference_in_badges(Difference) :-
badges_per_year(wendy, WendyBadges),  % Get the total badges earned by Wendy in a year
badges_per_year(amber, AmberBadges),  % Get the total badges earned by Amber in a year
Difference is WendyBadges - AmberBadges.  % Calculate the difference in badges earned
% Query predicate to run the program and get the result
query(Difference) :-
difference_in_badges(Difference).
% Uncomment the following line to run the query
% ?- query(Difference).
%query(Difference).