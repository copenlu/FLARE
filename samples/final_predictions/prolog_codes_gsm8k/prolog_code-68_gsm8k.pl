% Define the rule to calculate the total number of people sent by all schools
total_people_sent(TotalPeople) :-
PlayersPerTeam = 5,     % Assumed atom/predicate: Number of players per team
CoachesPerTeam = 1,     % Assumed atom/predicate: Number of coaches per team
TeamsPerSchool = 2,     % Assumed atom/predicate: Number of teams per school
Schools = 4,            % Assumed atom/predicate: Number of schools
TotalPeoplePerSchool is (PlayersPerTeam + CoachesPerTeam) * TeamsPerSchool,
TotalPeople is TotalPeoplePerSchool * Schools.
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
total_people_sent(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).