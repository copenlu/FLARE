% Define the rule to calculate the total pounds of butter needed
butter_needed(DozensPerDay, DaysPerWeek, ButterNeeded) :-
TotalDozens is DozensPerDay * DaysPerWeek,    % Calculate the total number of dozens in a week
ButterNeeded is TotalDozens * 0.25 / 4.       % Calculate the total pounds of butter needed
% Query to find the total pounds of butter needed for Juan's croissants
query_butter_needed(ButterNeeded) :-
butter_needed(4, 7, ButterNeeded).  % Juan plans to make 4 dozens a day for a week
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_butter_needed(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).