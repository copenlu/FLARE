% Define the rule to calculate the total number of birds in the backyard
total_birds_in_backyard(InitialBirds, TotalBirds) :-
ScaredAway is InitialBirds // 3,  % Calculate the number of birds scared away
RemainingBirds is InitialBirds - ScaredAway,  % Calculate the number of remaining birds
TotalBirds is RemainingBirds + 20.  % Calculate the total number of birds after additional birds join
% Query to find the total number of birds in the backyard after the events
query_total_birds_in_backyard(TotalBirds) :-
total_birds_in_backyard(12, TotalBirds).
% Define a predicate that returns the correct numerical answer when queried
query(TotalBirds) :-
query_total_birds_in_backyard(TotalBirds).
% Uncomment the following line to run the query
% ?- query(TotalBirds).
%query(TotalBirds).