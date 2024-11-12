% Define the predicate to calculate total bales produced by the farmer in 6 hours
total_bales_produced(TotalBales) :-
TotalBales is 5 * 6.  % Farmer produces 5 bales per hour for 6 hours
% Define the predicate to calculate total bales picked up by the truck in 6 hours
total_bales_picked_up(TotalBales) :-
TotalBales is 3 * 6.  % Truck picks up 3 bales per hour for 6 hours
% Define the predicate to calculate bales left in the field
bales_left_in_field(TotalBalesProduced, TotalBalesPickedUp, BalesLeft) :-
BalesLeft is TotalBalesProduced - TotalBalesPickedUp.
% Query to find the number of bales left in the field
query_bales_left_in_field(BalesLeft) :-
total_bales_produced(TotalBalesProduced),
total_bales_picked_up(TotalBalesPickedUp),
bales_left_in_field(TotalBalesProduced, TotalBalesPickedUp, BalesLeft).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_bales_left_in_field(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).