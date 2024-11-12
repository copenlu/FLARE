% Define the total amount of apples bought
total_apples(12).
% Calculate Peter's share of apples
peters_share(Total, PeterShare) :-
PeterShare is Total * 1/4.
% Calculate Paul's share of apples
pauls_share(Total, PaulShare) :-
PaulShare is Total * 1/3.
% Calculate James' remaining apples after Peter and Paul take their shares
james_remaining_apples(Total, PeterShare, PaulShare, JamesRemaining) :-
JamesRemaining is Total - (PeterShare + PaulShare).
% Query predicate to run the program and get the result
query(JamesRemaining) :-
total_apples(Total),
peters_share(Total, PeterShare),
pauls_share(Total, PaulShare),
james_remaining_apples(Total, PeterShare, PaulShare, JamesRemaining).
% Uncomment the following line to run the query
% ?- query(JamesRemaining).
%query(JamesRemaining).