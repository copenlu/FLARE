% Define Joseph's expenditure in May
expenditure_may(500).
% Define Joseph's expenditure in June, which is $60 less than May
expenditure_june(ExpenditureMay, ExpenditureJune) :-
ExpenditureJune is ExpenditureMay - 60.
% Calculate the total expenditure for May and June
total_expenditure(ExpenditureMay, ExpenditureJune, TotalExpenditure) :-
TotalExpenditure is ExpenditureMay + ExpenditureJune.
% Query to find the total expenditure for May and June
query(TotalExpenditure) :-
expenditure_may(ExpenditureMay),  % Expenditure for May is given
expenditure_june(ExpenditureMay, ExpenditureJune),  % Calculate expenditure for June
total_expenditure(ExpenditureMay, ExpenditureJune, TotalExpenditure).  % Calculate total expenditure
% Uncomment the following line to run the query and find out the total expenditure for May and June
% ?- query(TotalExpenditure).
%query(TotalExpenditure).