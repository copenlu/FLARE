% Define the width of the chair
width(chair, 3).
% Calculate the width of the rug based on the width of the chair
width(rug, WidthRug) :-
width(chair, ChairWidth),
WidthRug is ChairWidth + 5.
% Calculate the width of the couch based on the width of the rug
width(couch, WidthCouch) :-
width(rug, RugWidth),
WidthCouch is 2 * RugWidth + 2.
% Calculate the length of the couch based on its width
length(couch, LengthCouch) :-
width(couch, CouchWidth),
LengthCouch is CouchWidth + 2.
% Query predicate to run the program and get the result
query(LengthCouch) :-
length(couch, LengthCouch).
% Uncomment the following line to run the query
% ?- query(LengthCouch).
%query(LengthCouch).