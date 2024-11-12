% Define the rule to calculate the percentage error
calculate_percentage_error(SetTemp, ActualTemp, PercentageError) :-
PercentageError is ((ActualTemp - SetTemp) / SetTemp) * 100.
% Define the rule to adjust the temperature based on the percentage error
adjust_temperature(SetTemp, PercentageError, AdjustedTemp) :-
AdjustedTemp is SetTemp + (SetTemp * (PercentageError / 100)).
% Query to find the adjusted temperature for a recipe calling for 520 degrees
query_adjusted_temperature(AdjustedTemp) :-
calculate_percentage_error(450, 468, PercentageError),  % Given values for set and actual temperature
adjust_temperature(520, PercentageError, AdjustedTemp).  % Adjust the temperature for the recipe
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_adjusted_temperature(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).