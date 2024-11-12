% Define Octavia's daily coffee intake (assumed known)
octavia_coffee(2).  % Assumed Octavia drinks 2 cups
% Define Juan's daily coffee intake (10 times Octavia's intake)
juan_coffee(20).  % Assumed Juan drinks 20 cups
% Define the doctor's recommended daily coffee intake for Juan
doctor_recommendation(4).
% Define the predicate to calculate the reduction needed for Juan to meet the doctor's recommendation
reduce_coffee(CurrentIntake, Recommendation, Reduction) :-
Reduction is CurrentIntake - Recommendation.
% Query predicate to find the reduction needed for Juan's daily coffee intake
query(Reduction) :-
juan_coffee(CurrentIntake),
doctor_recommendation(Recommendation),
reduce_coffee(CurrentIntake, Recommendation, Reduction).
% Uncomment the line below to run the query
% query(Reduction).
%query(Reduction).