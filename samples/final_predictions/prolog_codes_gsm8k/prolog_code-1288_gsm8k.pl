% Define the rule to calculate the total cost for Bob's project
total_cost(PopsicleSticksNeeded, Cost) :-
BoxesNeeded is PopsicleSticksNeeded / 8,  % Calculate the number of boxes needed
Cost is BoxesNeeded * 2.00.               % Calculate the total cost based on the number of boxes
% Query to find the total cost for Bob's project with 56 popsicle sticks needed
query_total_cost(Cost) :-
total_cost(56, Cost).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_cost(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).