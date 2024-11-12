% Define the number of apartments in the first two complexes
apartments_complex1(200).
apartments_complex2(200).
% Define the number of apartments in the third complex as 60% bigger than the sum of the first two complexes
apartments_complex3(ApartmentsComplex3) :-
apartments_complex1(ApartmentsComplex1),
apartments_complex2(ApartmentsComplex2),
ApartmentsComplex3 is round((ApartmentsComplex1 + ApartmentsComplex2) * 1.6).
% Calculate the total number of apartments
total_apartments(TotalApartments) :-
apartments_complex1(ApartmentsComplex1),
apartments_complex2(ApartmentsComplex2),
apartments_complex3(ApartmentsComplex3),
TotalApartments is ApartmentsComplex1 + ApartmentsComplex2 + ApartmentsComplex3.
% Calculate the total number of collections in a week
total_collections_per_week(TotalCollections) :-
total_apartments(TotalApartments),
TotalCollections is TotalApartments * 3.
% Calculate the total amount of money John makes in a week
total_income_per_week(TotalIncome) :-
total_collections_per_week(TotalCollections),
PaymentRate = 0.40,  % Payment rate per collection in dollars
TotalIncome is TotalCollections * PaymentRate.
% Query predicate to get the total income John makes in a week
query(TotalIncome) :-
total_income_per_week(TotalIncome).
% Uncomment the following line to run the query
% query(TotalIncome).
%query(TotalIncome).