% Define the number of marbles Sean has
marbles_sean(56).
% Calculate the number of marbles Cal has
marbles_cal(Marbles_Cal) :-
marbles_sean(Sean),
Marbles_Cal is Sean * 2.
% Calculate the number of marbles Carl has
marbles_carl(Marbles_Carl) :-
marbles_sean(Sean),
Marbles_Carl is Sean * 4.
% Calculate the total number of marbles Carl and Cal have combined
total_marbles(Total_Marbles) :-
marbles_cal(Marbles_Cal),
marbles_carl(Marbles_Carl),
Total_Marbles is Marbles_Cal + Marbles_Carl.
% Query predicate to find the total number of marbles Carl and Cal have combined
query(Total_Marbles) :-
total_marbles(Total_Marbles).
% Uncomment the line below to run the query
% query(Total_Marbles).
%query(Total_Marbles).