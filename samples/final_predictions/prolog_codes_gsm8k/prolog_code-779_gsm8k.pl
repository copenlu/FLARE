% Define the rule to calculate the number of people who think horse #12 will win
people_think_horse12_will_win(TotalPeople, Horse12People) :-
Horse2People is round(0.20 * TotalPeople),  % Calculate the number of people who think horse #2 will win
RemainingPeople is TotalPeople - Horse2People,  % Calculate the number of remaining people
Horse7People is round(0.60 * RemainingPeople),  % Calculate the number of people who think horse #7 will win
Horse12People is TotalPeople - Horse2People - Horse7People.  % Calculate the number of people who think horse #12 will win
% Query to find the number of people who think horse #12 will win
query_horse12_people(Horse12People) :-
people_think_horse12_will_win(50, Horse12People).  % Assuming total number of people is 50
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_horse12_people(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).