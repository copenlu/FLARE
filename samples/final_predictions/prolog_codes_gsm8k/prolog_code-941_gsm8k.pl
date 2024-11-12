% Define the number of students playing tennis (assumed known)
students_tennis(6).
% Calculate the number of students playing volleyball (twice the number of tennis players)
students_volleyball(Volleyball) :-
students_tennis(Tennis),  % Get the number of students playing tennis
Volleyball is 2 * Tennis. % Calculate the number of students playing volleyball
% Define the number of boys and girls playing soccer
boys_soccer(16).
girls_soccer(22).
% Calculate the total number of students playing soccer
students_soccer(TotalSoccer) :-
boys_soccer(Boys),    % Get the number of boys playing soccer
girls_soccer(Girls),  % Get the number of girls playing soccer
TotalSoccer is Boys + Girls.  % Calculate the total number of students playing soccer
% Calculate the total number of students
total_students(Total) :-
students_tennis(Tennis),    % Get the number of students playing tennis
students_volleyball(Volleyball),  % Get the number of students playing volleyball
students_soccer(Soccer),    % Get the total number of students playing soccer
Total is Tennis + Volleyball + Soccer.  % Calculate the total number of students
% Query to find the total number of students
query(Total) :-
total_students(Total).
% Uncomment the line below to run the query
% ?- query(Total).
%query(Total).