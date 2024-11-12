% Define Rob's shingling time
rob_time(120). % 2 hours = 120 minutes
% Calculate Royce's shingling time based on Rob's time
calculate_time(RobTime, RoyceTime) :-
RoyceTime is 2 * RobTime + 40.
% Query to find Royce's shingling time when Rob takes 2 hours
query(RoyceTime) :-
rob_time(RobTime),
calculate_time(RobTime, RoyceTime).
% Uncomment the following line to run the query and calculate Royce's shingling time
% ?- query(RoyceTime).
%query(RoyceTime).