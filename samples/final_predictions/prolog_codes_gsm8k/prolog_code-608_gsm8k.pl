% Define the rule to calculate the number of days for the beanstalk to surpass the window height
days_to_surpass_window(BeanstalkHeight, WindowHeight, Days) :-
BeanstalkHeight < WindowHeight,
NewHeight is BeanstalkHeight * 2,
days_to_surpass_window(NewHeight, WindowHeight, Days1),
Days is Days1 + 1.
days_to_surpass_window(BeanstalkHeight, WindowHeight, 0) :-
BeanstalkHeight >= WindowHeight.
% Query to find the number of days for the beanstalk to surpass the window height
query_days_to_surpass_window(Days) :-
days_to_surpass_window(4, 20, Days).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_days_to_surpass_window(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).