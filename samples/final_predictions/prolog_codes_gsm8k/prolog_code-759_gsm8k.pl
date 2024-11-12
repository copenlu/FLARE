% Define the rule to calculate the number of students who like to play video games
students_hobbies(VideoGames) :-
TotalStudents = 50,  % Total number of students in the class
Bake = 10,          % Number of students who like to bake
Basketball = 5,     % Number of students who like to play basketball
Music is 2 * Basketball,  % Number of students who like to play music (twice the number of basketball players)
TotalBakeAndBasketball is Bake + Basketball,  % Total number of students who like to bake or play basketball
VideoGames is TotalStudents - TotalBakeAndBasketball - Music.  % Number of students who like to play video games
% Query predicate to find the number of students who like to play video games
query(VideoGames) :-
students_hobbies(VideoGames).
% Uncomment the line below to run the query
% ?- query(VideoGames).
%query(VideoGames).