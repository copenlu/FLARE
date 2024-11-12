% Define the number of checks Buford writes for each type of payment
electric_bill_checks(12).
gas_bill_checks(12).
church_checks(24).
pest_lawn_checks(4).
% Calculate the total number of checks Buford writes per year
total_checks(Total) :-
electric_bill_checks(ElectricChecks),
gas_bill_checks(GasChecks),
church_checks(ChurchChecks),
pest_lawn_checks(PestLawnChecks),
Total is ElectricChecks + GasChecks + ChurchChecks + PestLawnChecks.
% Query predicate to find the total number of checks Buford writes per year
query(Total) :-
total_checks(Total).
% Uncomment the line below to run the query
% query(Total).
%query(Total).