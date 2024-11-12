% Define the rule to calculate the height after the second bounce
calculate_bounce_height(InitialHeight, BounceHeight) :-
FirstBounceHeight is InitialHeight * (2/3),  % Calculate the height after the first bounce
BounceHeight is FirstBounceHeight * (2/3).  % Calculate the height after the second bounce
% Query to find the height the ball reaches on its second bounce from a 3rd-floor balcony
query_bounce_height(BounceHeight) :-
StoryHeight is 24,          % Height of each story
InitialHeight is 3 * StoryHeight,  % Height of the 3rd-floor balcony
calculate_bounce_height(InitialHeight, BounceHeight).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_bounce_height(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).