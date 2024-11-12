% Define the rule for calculating the total number of students leaving early
students_leaving_early(TotalStudents, StudentsLeaving) :-
FootballPlayers is round(0.20 * TotalStudents),  % Assumed atom: 20% of students are football players
NonFootballPlayers is TotalStudents - FootballPlayers,
CheerleadersAndBandMembers is round(0.25 * NonFootballPlayers),  % Assumed atom: 25% of non-football players are cheerleaders or part of the band
StudentsLeaving is FootballPlayers + CheerleadersAndBandMembers.
% Predicate to encapsulate the entire calculation and output the total number of students leaving early
calculate_students_leaving_early(StudentsLeaving) :-
students_leaving_early(30, StudentsLeaving).  % Assumed atom: Total number of students in Mr. Roper's class is 30
% Query to find the total number of students leaving early
query(StudentsLeaving) :-
calculate_students_leaving_early(StudentsLeaving).
% Uncomment the following line to run the query
% ?- query(StudentsLeaving).
%query(StudentsLeaving).