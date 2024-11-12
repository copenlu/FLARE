% Define the initial number of men and women at the party
initial_people(25, 15).
% Calculate the total number of people at the beginning
total_people(Total) :-
initial_people(Men, Women),
Total is Men + Women.
% Calculate the number of people who left the party
people_left(Total, Left) :-
Left is Total // 4.
% Calculate the number of women left at the party
women_left(LeftMen, LeftWomen) :-
initial_people(_, Women),
LeftWomen is Women - (TotalMen - LeftMen).
% Define a rule to find the number of women left at the party
women_at_party(WomenLeft) :-
initial_people(InitialMen, InitialWomen),
total_people(TotalPeople),
people_left(TotalPeople, Left),
LeftMen is InitialMen - 22,
women_left(LeftMen, WomenLeft).
% Query predicate to run the program and get the result
query(WomenLeft) :-
women_at_party(WomenLeft).
% Uncomment the following line to run the query
% ?- query(WomenLeft).
%query(WomenLeft).