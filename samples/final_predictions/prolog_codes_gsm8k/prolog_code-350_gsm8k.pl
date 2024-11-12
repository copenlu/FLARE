% Define the weight relationships between the animals based on the given information
weight(pink_frog, 50).
weight(blue_beetle, 50).  % Assumed atom/predicate
weight(green_toad, 50).  % Assumed atom/predicate
weight(yellow_snake, Weight) :- Weight is 50 + 10.
weight(red_bird, Weight) :- Weight is 50 - 20.
% Define the total_weight predicate to calculate the total weight of the container
total_weight(ContainerWeight, TotalWeight) :-
weight(pink_frog, PinkFrogWeight),
weight(blue_beetle, BlueBeetleWeight),
weight(green_toad, GreenToadWeight),
weight(yellow_snake, YellowSnakeWeight),
weight(red_bird, RedBirdWeight),
TotalWeight is ContainerWeight + PinkFrogWeight + BlueBeetleWeight + GreenToadWeight + YellowSnakeWeight + RedBirdWeight.
% Query predicate to run the program and get the result
query(TotalWeight) :-
total_weight(20, TotalWeight).
% Uncomment the following line to run the query
% ?- query(TotalWeight).
%query(TotalWeight).