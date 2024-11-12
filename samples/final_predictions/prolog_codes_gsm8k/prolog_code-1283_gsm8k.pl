% Define the number of helmets as 20
helmets(20).
% Define the relationship to calculate the number of robots based on the number of helmets
robots(Robots) :-
helmets(Helmets),
Robots is Helmets / 2.
% Define the relationship to calculate the number of footballs based on the number of helmets
footballs(Footballs) :-
helmets(Helmets),
Footballs is Helmets * 2.
% Calculate the total number of items Dominick saw
total_items(Total) :-
helmets(H),
robots(R),
footballs(F),
Total is H + R + F.
% Query to find the total number of items Dominick saw
query_total_items(Total) :-
total_items(Total).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_items(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).