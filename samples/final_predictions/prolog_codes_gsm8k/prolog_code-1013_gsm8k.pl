% Define Jessica's monthly paycheck and cost per pair of shoes
monthly_paycheck(2000).
cost_per_pair(1000).
% Calculate the number of shoes Jessica can buy in a year
shoes_per_year(NumShoes) :-
monthly_paycheck(Paycheck),
cost_per_pair(Cost),
MonthlySavings is 0.25 * Paycheck,
ShoesPerMonth is MonthlySavings / Cost,
NumShoes is ShoesPerMonth * 12.
% Query predicate to find the number of shoes Jessica can buy in a year
query(NumShoes) :-
shoes_per_year(NumShoes).
% Uncomment the line below to run the query
% query(NumShoes).
%query(NumShoes).