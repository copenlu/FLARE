% Define the growth rate of the bamboo
growth_rate(30).
% Convert feet to inches
feet_to_inches(Feet, Inches) :-
Inches is Feet * 12.
% Calculate the number of days needed for the bamboo to reach a desired height
calculate_days(CurrentHeightFeet, DesiredHeightInches, Days) :-
feet_to_inches(CurrentHeightFeet, CurrentHeightInches),
DesiredHeight is DesiredHeightInches - CurrentHeightInches,
growth_rate(GrowthRate),
Days is DesiredHeight / GrowthRate.
% Query to calculate the number of days needed for the bamboo to reach 600 inches
query(Days) :-
calculate_days(20, 600, Days).
% Uncomment the following line to run the query and calculate the number of days needed
% ?- query(Days).
%query(Days).