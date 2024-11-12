% Define the rule to calculate the number of years to reach the required height
years_to_reach_height(CurrentHeightInInches, GrowthRate, RequiredHeightInInches, Years) :-
CurrentHeightInFeet is CurrentHeightInInches / 12,          % Convert current height to feet
RequiredHeightInFeet is RequiredHeightInInches / 12,       % Convert required height to feet
InchesToGrow is RequiredHeightInInches - CurrentHeightInInches,  % Calculate inches Adam needs to grow
Years is InchesToGrow / GrowthRate.                        % Calculate years needed to reach required height
% Query to find the number of years for Adam to reach the required height
query_years_to_reach_height(Years) :-
years_to_reach_height(40, 2, 48, Years).  % Adam's current height is 40 inches, growth rate is 2 inches/year, required height is 48 inches
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_years_to_reach_height(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).