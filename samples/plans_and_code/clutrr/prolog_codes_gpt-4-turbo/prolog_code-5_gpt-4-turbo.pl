% Define direct relationships using facts
brother(james, elliott). % James is the brother of Elliott
brother(elliott, alan).   % Elliott is the brother of Alan
father(alan, annie).      % Alan is the father of Annie
% Define sibling relationship
sibling(X, Y) :- brother(X, Y).
sibling(X, Y) :- brother(Y, X).
% Define uncle relationship
uncle(Uncle, NieceOrNephew) :-
father(Parent, NieceOrNephew),
sibling(Parent, Uncle).
% Query to determine if James is the uncle of Annie
query :- uncle(james, annie).
% Uncomment the line below to run the query in SWI-Prolog
% ?- query.
% ?- query.