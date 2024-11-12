% Define predicates for the number of issues per year for each magazine
issues_per_year(magazine1, 12).
issues_per_year(magazine2, 6).
issues_per_year(magazine3, 24).
% Calculate the total number of issues Susan receives per year
total_issues_per_year(TotalIssues) :-
issues_per_year(magazine1, Issues1),
issues_per_year(magazine2, Issues2),
issues_per_year(magazine3, Issues3),
TotalIssues is Issues1 + Issues2 + Issues3.
% Define a query predicate to find out the total number of issues Susan receives per year
query(TotalIssues) :-
total_issues_per_year(TotalIssues).
% Uncomment the line below to run the query in SWI-Prolog
% query(TotalIssues).
%query(TotalIssues).