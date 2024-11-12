% Define the rule to calculate the total payment
total_payment(MaterialCost, JewelerCost, InsuranceFee, TotalPayment) :-
TotalCost is MaterialCost + JewelerCost,    % Calculate the total cost
InsuranceFee is 0.1 * TotalCost,            % Calculate the insurance fee
TotalPayment is TotalCost + InsuranceFee.   % Calculate the total payment
% Query to find the total payment when MaterialCost is $500 and JewelerCost is $800
query_total_payment(TotalPayment) :-
total_payment(500, 800, InsuranceFee, TotalPayment).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_payment(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).