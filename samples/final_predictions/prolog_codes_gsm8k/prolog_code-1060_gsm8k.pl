% Predicate to calculate the total cost of books
% Params: NumBooks, PricePerBook, TotalCostBooks
total_cost_books(NumBooks, PricePerBook, TotalCostBooks) :-
TotalCostBooks is NumBooks * PricePerBook.
% Predicate to calculate the total cost of pencils
% Params: NumPencils, PricePerPencil, TotalCostPencils
total_cost_pencils(NumPencils, PricePerPencil, TotalCostPencils) :-
TotalCostPencils is NumPencils * PricePerPencil.
% Predicate to calculate the total amount spent
% Params: TotalCostBooks, TotalCostPencils, TotalAmountSpent
total_amount_spent(TotalCostBooks, TotalCostPencils, TotalAmountSpent) :-
TotalAmountSpent is TotalCostBooks + TotalCostPencils.
% Main predicate to compute the total amount spent by Ted
% Params: TotalAmountSpent
calculate_total_amount_spent(TotalAmountSpent) :-
% Constants
InitialAmount = 200,
NumBooks = 3,
PricePerBook = 16,
NumPencils = 3,
PricePerPencil = 6,
% Calculate total cost of books and pencils
total_cost_books(NumBooks, PricePerBook, TotalCostBooks),
total_cost_pencils(NumPencils, PricePerPencil, TotalCostPencils),
% Calculate total amount spent
total_amount_spent(TotalCostBooks, TotalCostPencils, TotalAmountSpent).
% Query predicate to get the total amount spent by Ted
query(TotalAmountSpent) :-
calculate_total_amount_spent(TotalAmountSpent).
% Uncomment the following line to run the query
% query(TotalAmountSpent).
%query(TotalAmountSpent).