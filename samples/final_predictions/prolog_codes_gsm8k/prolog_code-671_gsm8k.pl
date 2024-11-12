% Define the rule to calculate the number of pages left to write
% Query to find the number of pages Shiela has left to write
query_pages_left_to_write(PagesLeft) :-
pages_left_to_write(15, 15, PagesLeft).  % Shiela has a 15-page research paper
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_pages_left_to_write(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).