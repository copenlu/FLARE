% Define the number of guns each person has
guns(dj, 8).
guns(nick, 10).
guns(rj, 1).
guns(richard, 5).
% Calculate the total number of guns
total_guns(Total) :-
guns(dj, DJ),
guns(nick, Nick),
guns(rj, RJ),
guns(richard, Richard),
Total is DJ + Nick + RJ + Richard.
% Calculate the number of guns each person would have when sharing them equally
share_guns(Each) :-
total_guns(Total),
NumPeople is 4,
Each is Total / NumPeople.
% Query predicate to run the program and get the result
query(Each) :-
share_guns(Each).
% Uncomment the following line to run the query
% ?- query(Each).
%query(Each).