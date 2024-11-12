% Define the heights of the cheerleaders
height(9, 64).  % 9 cheerleaders are 64" tall
height(1, 60).  % 1 cheerleader is 60" tall
% Define predicate to calculate total height of a level in the pyramid
level_height(Level, TotalHeight) :-
height(Count, Height),
TotalHeight is Count * Height.
% Define predicate to calculate total height of the human pyramid
human_pyramid_height(TotalHeight) :-
level_height(4, BottomHeight),  % 4 girls on the bottom
level_height(3, MiddleHeight),  % 3 girls on top of the 4
level_height(2, TopHeight),     % 2 girls on top of the 3
height(1, ShortestHeight),      % Shortest girl at the top
TotalHeight is BottomHeight + MiddleHeight + TopHeight + ShortestHeight.
% Query predicate to run the program and get the result
query(TotalHeight) :-
human_pyramid_height(TotalHeight).
% Uncomment the following line to run the query
% ?- query(TotalHeight).
%query(TotalHeight).