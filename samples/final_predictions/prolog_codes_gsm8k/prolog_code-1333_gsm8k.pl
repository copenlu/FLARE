% Define the rule for calculating the total number of cookies
total_cookies(OatmealCookies, ChocolateChipCookies, SugarCookies, CookiesEaten, CookiesGivenAway, CookiesBaked, TotalCookies) :-
InitialTotal is OatmealCookies + ChocolateChipCookies + SugarCookies,
TotalAfterConsumption is InitialTotal - (3 + 1 + 1 + 2), % Randy ate 3 cookies for snacks, 1 oatmeal cookie for lunch, 1 chocolate chip cookie for lunch, and 2 oatmeal cookies for lunch
TotalAfterGivingAway is TotalAfterConsumption - CookiesGivenAway,
TotalAfterBaking is TotalAfterGivingAway + (CookiesBaked * 3), % Randy bakes 4 of each flavor
TotalCookies is TotalAfterBaking.
% Define a predicate to execute the specific query with given values
query(TotalCookies) :-
total_cookies(9, 4, 5, 3, 2, 4, TotalCookies).
% Uncomment the line below to run the query
% ?- query(TotalCookies).
%query(TotalCookies).