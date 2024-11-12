% Define the rule to calculate the discounted price
discounted_price(OriginalPrice, DiscountPercentage, DiscountedPrice) :-
DiscountedPrice is OriginalPrice * (1 - DiscountPercentage/100).
% Define the rule to calculate the selling price
selling_price(PurchasePrice, MarkupPercentage, SellingPrice) :-
SellingPrice is PurchasePrice * (1 + MarkupPercentage/100).
% Define the rule to calculate the percentage discount obtained
percentage_discount(OriginalPrice, SellingPrice, DiscountPercentage) :-
DiscountPercentage is ((OriginalPrice - SellingPrice) / OriginalPrice) * 100.
% Given data
original_price(2000).
discount_percentage(75).
markup_percentage(120).
% Query to find the percentage discount obtained by Mr. Roger's friend
query_percentage_discount(DiscountPercentage) :-
original_price(OriginalPrice),
discount_percentage(DiscountPercentage),
markup_percentage(MarkupPercentage),
discounted_price(OriginalPrice, DiscountPercentage, PurchasePrice),
selling_price(PurchasePrice, MarkupPercentage, SellingPrice),
percentage_discount(OriginalPrice, SellingPrice, DiscountPercentage).
% Define a predicate that returns the correct numerical answer when queried
query(DiscountPercentage) :-
query_percentage_discount(DiscountPercentage).
% Uncomment the following line to run the query
% ?- query(DiscountPercentage).
%query(DiscountPercentage).