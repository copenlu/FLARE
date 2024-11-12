% Define the rule to calculate the marbles left for Dean
marbles_left_for_dean(TotalMarbles, MarblesLeft) :-
MarblesToJamie is TotalMarbles / 5,  % Calculate the marbles given to Jamie (1/5 of total marbles)
MarblesToDonald = 10,                % Define the marbles given to Donald
MarblesLeft is TotalMarbles - MarblesToJamie - MarblesToDonald.  % Calculate the marbles left for Dean
% Query to find the marbles left for Dean when he starts with 30 marbles
query_marbles_left_for_dean(MarblesLeft) :-
marbles_left_for_dean(30, MarblesLeft).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_marbles_left_for_dean(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).