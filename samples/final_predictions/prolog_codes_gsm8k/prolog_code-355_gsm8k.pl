% Define the predicate to calculate the total cookies given to the son
cookies_given_to_son(Cookies) :-
Cookies is 4 * 5.  % 4 cookies/day * 5 days
% Define the predicate to calculate the total cookies eaten by the husband
cookies_eaten_by_husband(Cookies) :-
Cookies is 1 * 7.  % 1 cookie/day * 7 days
% Define the predicate to calculate the number of cookies Jenny eats
cookies_jenny_eats(TotalCookies, CookiesGivenToSon, CookiesEatenByHusband, CookiesJennyEats) :-
CookiesGivenToSon is 4 * 5,  % 4 cookies/day * 5 days
CookiesEatenByHusband is 1 * 7,  % 1 cookie/day * 7 days
CookiesJennyEats is TotalCookies - CookiesGivenToSon - CookiesEatenByHusband.
% Query predicate to run the program and get the result
query(CookiesJennyEats) :-
cookies_jenny_eats(36, CookiesGivenToSon, CookiesEatenByHusband, CookiesJennyEats).
% Uncomment the following line to run the query
% ?- query(CookiesJennyEats).
%query(CookiesJennyEats).