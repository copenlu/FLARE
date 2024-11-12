% Facts for the ages of Akbar, Alessandro, and the total age of the children
age(akbar, 3).
age(alessandro, 4).
total_age(20).
% Calculate the average age of the group
average_age(Average) :-
total_age(Total),
NumChildren is 4,
Average is Total / NumChildren.
% Calculate Helene's age
helene_age(HeleneAge) :-
average_age(Average),
HeleneAge is 2 * Average.
% Calculate Wilfred's age
wilfred_age(WilfredAge) :-
total_age(Total),
age(akbar, AkbarAge),
age(alessandro, AlessandroAge),
helene_age(HeleneAge),
WilfredAge is Total - (AkbarAge + AlessandroAge + HeleneAge).
% Query predicate to find the age of Wilfred
query(WilfredAge) :-
wilfred_age(WilfredAge).
% Uncomment the line below to run the query
% query(WilfredAge).
%query(WilfredAge).