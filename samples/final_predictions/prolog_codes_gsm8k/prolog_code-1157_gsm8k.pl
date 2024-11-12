% Define the total number of eggs painted by each individual
eggs_painted(56).
% Define the predicate to represent that Arnold and Madeline painted the same number of eggs
same_number(A, M) :-
A = M.
% Define the predicate to represent the total number of eggs painted by Camden and Sarah
camden_sarah_total(C, S) :-
C + S =:= 30.
% Define the predicate to represent the difference in the number of eggs painted by Camden and Sarah
camden_sarah_difference(C, S) :-
C - S =:= 12.
% Define the predicate to calculate how many more eggs Camden painted than Arnold
more_than_arnold(C, A, Difference) :-
camden_sarah_total(C, S),
camden_sarah_difference(C, S),
same_number(A, M),
eggs_painted(Total),
A + M + C + S =:= Total,
Difference is C - A.
% Query predicate to find how many more eggs Camden painted than Arnold
query(Difference) :-
more_than_arnold(C, A, Difference).
% Uncomment the line below to run the query
% query(Difference).
%query(Difference).