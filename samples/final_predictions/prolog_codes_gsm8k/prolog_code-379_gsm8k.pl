% Predicate to calculate the total cost of picture frames including etching
cost_picture_frames(Seniors, Cost) :-
Cost is Seniors * (20 + (20/100)*20).
% Predicate to calculate the total cost of pins
cost_pins(Seniors, Cost) :-
Cost is 2 * 5.
% Predicate to calculate the total cost of cords for officers
cost_cords(Officers, Cost) :-
Cost is Officers * 12.
% Predicate to calculate the total amount spent on senior gifts
total_cost(Seniors, Officers, TotalCost) :-
cost_picture_frames(Seniors, Cost1),
cost_pins(Seniors, Cost2),
cost_cords(Officers, Cost3),
TotalCost is Cost1 + Cost2 + Cost3.
% Query to find the total amount spent on senior gifts for 44 seniors and 1/4 officers
query(TotalCost) :-
total_cost(44, 44//4, TotalCost).
% Uncomment the following line to run the query
% ?- query(TotalCost).
%query(TotalCost).