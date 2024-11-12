% Define the facts
father(stanley, james). % Stanley is the father of James
father(james, teresa).  % James is the father of Teresa
father(james, enedina). % James is the father of Enedina
% Define the rules
parent(X, Y) :- father(X, Y). % A parent relationship is defined by the father relationship
% Query to determine the relationship
% To find out how Teresa is related to Stanley
query :- parent(stanley, teresa).
% Uncomment the line below to run the query in SWI-Prolog
% ?- query.
% ?- query.