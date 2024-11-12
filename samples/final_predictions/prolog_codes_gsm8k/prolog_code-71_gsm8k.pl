% Define the rule to calculate the initial amount of money Bailey started with
initial_amount(InitialAmount) :-
TotalAmount is 100,             % Total amount of money at the end of 8 weeks
WeeklyAllowance is 5 * 8,       % Total money received from weekly allowance over 8 weeks
InitialAmount is TotalAmount - WeeklyAllowance.  % Calculate the initial amount Bailey started with
% Query to find the initial amount of money Bailey started with
query_initial_amount(InitialAmount) :-
initial_amount(InitialAmount).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_initial_amount(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).