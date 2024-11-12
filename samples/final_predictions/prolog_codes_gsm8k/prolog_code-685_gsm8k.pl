% Define the total number of employees
total_employees(50).
% Calculate the number of employees overseeing the company
employees_overseeing_company(NumOverseeing) :-
total_employees(Total),
ManagementPercentage is 0.20,  % Assumed management percentage
OversightPercentage is 0.30,   % Assumed oversight percentage
ManagementEmployees is round(ManagementPercentage * Total),
NumOverseeing is round(OversightPercentage * ManagementEmployees).
% Query to calculate the number of employees overseeing the company
query(NumOverseeing) :-
employees_overseeing_company(NumOverseeing).
% Uncomment the following line to run the query and calculate the number of employees overseeing the company
% ?- query(NumOverseeing).
%query(NumOverseeing).