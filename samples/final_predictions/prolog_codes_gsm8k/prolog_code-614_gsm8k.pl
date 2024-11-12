% Define the rule to calculate the total number of legs in the store
total_legs_in_store(Dogs, Cats, Birds, TotalLegs) :-
DogLegs is Dogs * 4,    % Calculate total legs for dogs
CatLegs is Cats * 4,    % Calculate total legs for cats
BirdLegs is Birds * 2,  % Calculate total legs for birds
TotalLegs is DogLegs + CatLegs + BirdLegs.  % Calculate total legs for all pets
% Query to find the total number of legs in the store
query_total_legs_in_store(TotalLegs) :-
total_legs_in_store(5, 2, 10, TotalLegs).  % Given quantities of dogs, cats, and birds
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_legs_in_store(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).