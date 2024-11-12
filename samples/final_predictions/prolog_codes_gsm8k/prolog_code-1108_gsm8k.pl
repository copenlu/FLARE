% Define the rule to calculate Frankie's score
calculate_frankies_score(BinkiesScore, FrankiesScore) :-
FrankiesScore is 2 * BinkiesScore + 15.  % Calculate Frankie's score based on Binkie's score
% Query to find Frankie's score when Binkie's score is 90
query_frankies_score(FrankiesScore) :-
calculate_frankies_score(90, FrankiesScore).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_frankies_score(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).