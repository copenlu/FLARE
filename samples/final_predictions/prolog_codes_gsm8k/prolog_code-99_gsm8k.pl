% Define the number of hours Harry slept
harry_sleep_hours(9).
% Calculate the number of hours James slept (2/3 of what Harry slept)
james_sleep_hours(JamesHours) :-
harry_sleep_hours(HarryHours),
JamesHours is 2*HarryHours//3.
% Calculate the difference in sleeping hours between Harry and James
hours_difference(Difference) :-
harry_sleep_hours(HarryHours),
james_sleep_hours(JamesHours),
Difference is HarryHours - JamesHours.
% Query to find out how many more hours Harry slept than James
query(Difference) :-
hours_difference(Difference).
% Uncomment the following line to run the query and calculate the difference in sleeping hours
% ?- query(Difference).
%query(Difference).