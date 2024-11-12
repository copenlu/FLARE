% Define the rule to calculate Caroline's age
caroline_age(CarolineAge) :-
chris_age(ChrisAge),            % Assumed atom/predicate: Chris's age is 4
ben_age(BenAge, ChrisAge),      % Calculate Ben's age
CarolineAge is BenAge * 3.      % Calculate Caroline's age
% Define the rule to calculate Ben's age
ben_age(BenAge, ChrisAge) :-
BenAge is ChrisAge * 2.         % Ben is two times older than Chris
% Define the rule to set Chris's age
chris_age(4).                       % Assumed atom/predicate: Chris's age is 4
% Query to find Caroline's age
query_caroline_age(CarolineAge) :-
caroline_age(CarolineAge).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_caroline_age(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).