% Define the rule to calculate the annual pension after a specific number of years of service
calculate_annual_pension(YearsOfService, AnnualPension) :-
TotalPensionAfter20Years is 50000 * 20,                    % Calculate total pension after 20 years
AdditionalPensionPerYear is TotalPensionAfter20Years * 0.05,  % Calculate additional pension per year
TotalPensionAfter30Years is TotalPensionAfter20Years + (AdditionalPensionPerYear * (YearsOfService - 20)),  % Calculate total pension after 30 years
AnnualPension is TotalPensionAfter30Years / YearsOfService.  % Calculate annual pension after 30 years of service
% Query to find Marcy's annual pension after 30 years of service
query(AnnualPension) :-
calculate_annual_pension(30, AnnualPension).
% Uncomment the following line to run the query
% ?- query(AnnualPension).
%query(AnnualPension).