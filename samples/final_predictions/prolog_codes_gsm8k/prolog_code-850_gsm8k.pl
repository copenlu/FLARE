% Define the total monthly production of chocolate bars
total_production(50000).
% Calculate the production in the first week
week1_production(8000).
% Calculate the production in the second week (half of the first week's production)
week2_production(Week2, Week1) :-
Week2 is Week1 // 2.
% Calculate the production in the third week (three times the first week's production)
week3_production(Week3, Week1) :-
Week3 is Week1 * 3.
% Calculate the production in the fourth week based on the total monthly production and the production in the first three weeks
week4_production(Week4, Total, Week1, Week2, Week3) :-
Week4 is Total - Week1 - Week2 - Week3.
% Query predicate to find the production in the fourth week
query(Week4) :-
total_production(Total),
week1_production(Week1),
week2_production(Week2, Week1),
week3_production(Week3, Week1),
week4_production(Week4, Total, Week1, Week2, Week3).
% Uncomment the line below to run the query
% query(Week4).
%query(Week4).