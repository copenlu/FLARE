% Define the rule to calculate earnings and the difference
earnings(JillSaturdayHours, JillSundayHours, JohnSaturdayHours, JohnSundayHours, JillEarnings, JohnEarnings, Difference) :-
HourlyRate is 10,  % Assumed hourly rate
JillEarnings is (JillSaturdayHours + JillSundayHours) * HourlyRate,
JohnEarnings is (JohnSaturdayHours + JohnSundayHours) * HourlyRate,
Difference is JohnEarnings - JillEarnings.
% Query to find the difference in earnings between John and Jill
query_earnings(Difference) :-
earnings(2, 1, 4, 3, JillEarnings, JohnEarnings, Difference).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_earnings(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).