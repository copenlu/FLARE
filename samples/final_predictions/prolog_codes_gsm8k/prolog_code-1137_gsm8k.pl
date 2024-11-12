% Define the number of women wearing 4-inch heels (assumed known)
women_4inch(3).  % Assumed number of women wearing 4-inch heels
% Define the number of women wearing 2-inch heels (assumed known)
women_2inch(3).  % Assumed number of women wearing 2-inch heels
% Calculate the total height of all heels
total_height(TotalHeight) :-
women_4inch(NumWomen4Inch),
women_2inch(NumWomen2Inch),
TotalHeight is (NumWomen4Inch * 4) + (NumWomen2Inch * 2).
% Calculate the total number of women
total_women(TotalWomen) :-
women_4inch(NumWomen4Inch),
women_2inch(NumWomen2Inch),
TotalWomen is NumWomen4Inch + NumWomen2Inch.
% Calculate the average height of heels
average_height(AverageHeight) :-
total_height(TotalHeight),
total_women(TotalWomen),
AverageHeight is TotalHeight / TotalWomen.
% Query predicate to find the average height of heels at the cocktail party
query(AverageHeight) :-
average_height(AverageHeight).
% Uncomment the line below to run the query
% query(AverageHeight).
%query(AverageHeight).