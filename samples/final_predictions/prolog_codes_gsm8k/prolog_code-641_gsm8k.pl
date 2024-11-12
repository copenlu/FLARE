% Define the rule to calculate the number of flowers that have bloomed
flowers_bloomed(TotalRows, FlowersPerRow, Bloomed) :-
TotalFlowers is TotalRows * FlowersPerRow,    % Calculate the total number of flowers in the garden
Bloomed is (4/5) * TotalFlowers.              % Calculate the number of flowers that have bloomed
% Query to find the number of flowers that have bloomed in Arianna's garden
query_flowers_bloomed(Bloomed) :-
flowers_bloomed(10, 20, Bloomed).  % Given 10 rows with 20 flowers per row
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_flowers_bloomed(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).