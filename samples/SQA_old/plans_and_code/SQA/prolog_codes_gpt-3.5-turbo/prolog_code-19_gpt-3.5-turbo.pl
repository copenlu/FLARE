% Define Prime Ministers and their terms
prime_minister('Bonar Law', 1922, 1923, male).
prime_minister('Stanley Baldwin', 1923, 1924, male).
prime_minister('Ramsay MacDonald', 1924, 1929, male).
prime_minister('Stanley Baldwin', 1924, 1929, male).
prime_minister('Ramsay MacDonald', 1929, 1935, male).
prime_minister('Stanley Baldwin', 1935, 1937, male).
prime_minister('Neville Chamberlain', 1937, 1940, male).
prime_minister('Margaret Thatcher', 1979, 1990, female).
% Find predecessor
predecessor(X, Y) :-
prime_minister(X, _, EndX, _),
prime_minister(Y, StartY, _, _),
EndX is StartY - 1.
% Find successor
successor(X, Y) :- predecessor(Y, X).
% Check for female PM before or after Baldwin
female_neighbor(Name, TermStart, TermEnd) :-
prime_minister('Stanley Baldwin', TermStart, TermEnd, male),
(predecessor(Name, 'Stanley Baldwin'); successor(Name, 'Stanley Baldwin')),
prime_minister(Name, _, _, female).
% Query to find if there was a female PM before or after Baldwin
query_female_neighbor :-
(female_neighbor(Name, Start, End),
format('~w served as PM from ~w to ~w and was a female.', [Name, Start, End]), fail; true).
% Driver predicate for query
query :- query_female_neighbor.
%query.