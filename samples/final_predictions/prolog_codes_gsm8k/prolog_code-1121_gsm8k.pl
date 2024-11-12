% Define the rule to calculate the likelihood of Ellen's friend getting sprayed with soda
likelihood_of_spray(Percentage) :-
TotalSodas = 12,
ShakenSodas = 2,
UnshakenSodas = 9,
TotalChoices = ShakenSodas + UnshakenSodas + 1, % 1 unshaken soda taken by Ellen
Probability is (ShakenSodas / TotalChoices) * 100,
Percentage is round(Probability).
% Query to find the likelihood percentage
query_likelihood_of_spray(Percentage) :-
likelihood_of_spray(Percentage).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_likelihood_of_spray(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).