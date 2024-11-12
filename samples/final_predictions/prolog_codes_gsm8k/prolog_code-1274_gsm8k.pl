% Define the rule to calculate the original price per stick of jerky
original_price_per_stick(PricePerStick) :-
PricePerBag is 18.00,  % Assumed atom: original price per bag
SticksPerBag is 30,    % Assumed atom: number of sticks per bag
PricePerStick is PricePerBag / SticksPerBag.
% Define the rule to calculate the discounted price per stick of jerky
discounted_price_per_stick(DiscountedPricePerStick) :-
DiscountedPricePerBag is 18.00 - 3.00,  % Assumed atom: discounted price per bag
SticksPerBag is 30,                      % Assumed atom: number of sticks per bag
DiscountedPricePerStick is DiscountedPricePerBag / SticksPerBag * 100.
% Query to find the discounted price per stick of jerky
query_discounted_price_per_stick(DiscountedPricePerStick) :-
discounted_price_per_stick(DiscountedPricePerStick).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_discounted_price_per_stick(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).