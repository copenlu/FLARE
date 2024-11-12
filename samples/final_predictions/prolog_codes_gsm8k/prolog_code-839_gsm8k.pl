% Define the rule to calculate the amount raised by each student
calculate_student_amount(TotalAmountRaised, AmountRaisedByOrg, NumStudents, AmountPerStudent) :-
TotalAmountByStudents is TotalAmountRaised - AmountRaisedByOrg,
AmountPerStudent is TotalAmountByStudents / NumStudents.
% Query to calculate how much each student raised
query(AmountPerStudent) :-
calculate_student_amount(175000, 50000, 20, AmountPerStudent).
% Uncomment the following line to run the query and calculate the amount each student raised
% ?- query(AmountPerStudent).
%query(AmountPerStudent).