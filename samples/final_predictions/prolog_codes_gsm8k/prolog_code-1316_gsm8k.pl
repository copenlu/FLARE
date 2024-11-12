% Define the rule for updating the total number of children based on streets traveled
update_children(Street, StreetsTraveled, TotalChildren, UpdatedChildren) :-
Street =< StreetsTraveled,
NewChildren is TotalChildren * (2 + Street mod 2), % Join new children based on street number
NextStreet is Street + 1,
update_children(NextStreet, StreetsTraveled, NewChildren, UpdatedChildren).
update_children(Street, StreetsTraveled, TotalChildren, TotalChildren) :- Street > StreetsTraveled.
% Define the rule for calculating the total number of children following the truck
children_following_truck(StreetsTraveled, TotalChildren) :-
TotalChildren = 5, % Initially 5 children following the truck
update_children(1, StreetsTraveled, TotalChildren, UpdatedChildren),
FinalChildren is UpdatedChildren - 5. % Subtract the original 5 children who gave up
% Define a predicate to execute the specific query with given values
query(TotalChildren) :-
children_following_truck(3, TotalChildren). % Calculate total children after 3 streets
% Uncomment the line below to run the query
% ?- query(TotalChildren).
%query(TotalChildren).