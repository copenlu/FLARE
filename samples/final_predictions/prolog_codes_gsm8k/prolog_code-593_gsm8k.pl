% Define the rule to calculate the final value of the number train
final_number_train_value(StartingValue, FinalValue) :-
Step1 is StartingValue + (StartingValue / 2),  % Add half of the starting value
Step2 is Step1 / 5,                            % Divide the sum by 5
FinalValue is Step2 * (StartingValue - 12).    % Multiply by the starting value minus 12
% Query to find the final value of the number train with a starting value of 20
query_final_number_train_value(FinalValue) :-
final_number_train_value(20, FinalValue).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_final_number_train_value(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).