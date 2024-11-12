% Define relationships using facts
father(james, enedina).
father(james, teresa).
grandfather(stanley, enedina).
% Deduce grandfather relationship using rules
% If X is the grandfather of Y, and Y is the sibling of Z, then X is also the grandfather of Z.
grandfather(X, Z) :-
grandfather(X, Y),
father(F, Y),
father(F, Z),
Y \= Z.
% Define sibling relationship
sibling(Y, Z) :-
father(F, Y),
father(F, Z),
Y \= Z.
% Query to find if Stanley is the grandfather of Teresa
query :-
grandfather(stanley, teresa).
% Uncomment the following line to run the query
% ?- query.
% ?- query.