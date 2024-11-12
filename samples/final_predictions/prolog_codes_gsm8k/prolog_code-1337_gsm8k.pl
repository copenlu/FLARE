% Define the rule for calculating the number of chocolate chip cookies
chocolate_chip_cookies(RainbowCookies, OatmealCookies, TotalCookies, ChocolateChipCookies) :-
ChocolateChipCookies is TotalCookies - RainbowCookies - OatmealCookies.
% Define a predicate to execute the specific query with given values
query(ChocolateChipCookies) :-
chocolate_chip_cookies(2595, 3075, 7995, ChocolateChipCookies).
% Uncomment the line below to run the query
% ?- query(ChocolateChipCookies).
%query(ChocolateChipCookies).