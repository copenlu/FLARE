% Define the rule to calculate the number of pomelos given away
pomelos_given_away(OriginalAmount, LeftAmount, GivenAway) :-
LeftAmount is OriginalAmount / 4,    % Calculate the amount of pomelos Eve has left
GivenAway is OriginalAmount - LeftAmount.  % Calculate the number of pomelos given away
% Query to find the number of pomelos Eve gave away when the original amount is 20
query_pomelos_given_away(GivenAway) :-
pomelos_given_away(20, LeftAmount, GivenAway).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_pomelos_given_away(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).