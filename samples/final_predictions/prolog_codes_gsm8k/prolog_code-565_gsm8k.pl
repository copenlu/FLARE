% Define the quantities and prices of each item
hamburgers(5).  % Assumed quantity of hamburgers
hamburger_price(4).  % Assumed price of each hamburger
fries(10).  % Assumed quantity of packs of potato fries
fries_price(0.30).  % Assumed price of each pack of fries
drinks(5).  % Assumed quantity of cans of fruit drinks
drink_price(2).  % Assumed price of each can of drink
% Calculate the total cost of the order
total_cost(TotalCost) :-
hamburgers(Hamburgers),
hamburger_price(HamburgerPrice),
fries(Fries),
fries_price(FriesPrice),
drinks(Drinks),
drink_price(DrinkPrice),
TotalCost is (Hamburgers * HamburgerPrice) + (Fries * FriesPrice) + (Drinks * DrinkPrice).
% Calculate the change Carly receives back
change(Change) :-
total_cost(TotalCost),
AmountPaid is 50,  % Carly pays with a fifty-dollar bill
Change is AmountPaid - TotalCost.
% Query predicate to find the change Carly receives back
query(Change) :-
change(Change).
% Uncomment the line below to run the query
% ?- query(Change).
%query(Change).