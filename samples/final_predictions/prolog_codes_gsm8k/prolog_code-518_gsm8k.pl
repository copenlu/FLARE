% Define the cost per stick for each type of wood
cost_per_stick(2x4, 4, 200, Cost) :- Cost is 4 / 200.
cost_per_stick(2x8, 6, 400, Cost) :- Cost is 6 / 400.
% Determine the cheaper wood option
cheaper_wood(2x4) :- cost_per_stick(2x4, 4, 200, Cost1), cost_per_stick(2x8, 6, 400, Cost2), Cost1 =< Cost2.
cheaper_wood(2x8) :- cost_per_stick(2x4, 4, 200, Cost1), cost_per_stick(2x8, 6, 400, Cost2), Cost2 < Cost1.
% Calculate the maximum number of popsicle sticks within the budget
max_sticks(MaxSticks) :- cheaper_wood(CheaperWood), (CheaperWood = 2x4 -> MaxSticks is 200 * (24 / 4); MaxSticks is 400 * (24 / 6)).
% Query predicate to run the program and get the result
query(MaxSticks) :-
max_sticks(MaxSticks).
% Uncomment the following line to run the query
% ?- query(MaxSticks).
%query(MaxSticks).