% Define the rule to calculate the total number of likes
total_likes(TotalLikes) :-
InitialLikes = 2000,                    % Initial number of likes
LikesAfterThreeWeeks is InitialLikes * 70,  % Calculate likes after three weeks
TotalLikes is LikesAfterThreeWeeks + 20000. % Calculate total likes including new likes
% Query to find the total number of likes Fishio has
query(TotalLikes) :-
total_likes(TotalLikes).
% Uncomment the following line to run the query
% ?- query(TotalLikes).
%query(TotalLikes).