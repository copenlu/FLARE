% Calculate the missing amount for John
calculate_missing_amount(TotalCost, JohnCurrentAmount, MissingAmount) :-
SchoolContribution is TotalCost / 2,  % Calculate the school's contribution
TotalMissingAmount is TotalCost - SchoolContribution,  % Calculate the total missing amount
MissingAmount is TotalMissingAmount - JohnCurrentAmount.  % Calculate John's missing amount
% Query to calculate how much money John is missing
query(MissingAmount) :-
calculate_missing_amount(300, 50, MissingAmount).  % Total trip cost is $300, John's current amount is $50
% Uncomment the following line to run the query and calculate the missing amount for John
% ?- query(MissingAmount).
%query(MissingAmount).