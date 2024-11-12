% Define the relationships between the number of cookies each person has
cookies(katarina, 68).
cookies(max, MaxCookies) :- MaxCookies is 68 + 5.
cookies(cookie_monster, CookieMonsterCookies) :- cookies(max, MaxCookies), CookieMonsterCookies is MaxCookies - 12.
cookies(summer, SummerCookies) :- cookies(max, MaxCookies), SummerCookies is MaxCookies + 23.
% Calculate the total number of cookies
total_cookies(Total) :-
cookies(katarina, KatarinaCookies),
cookies(max, MaxCookies),
cookies(cookie_monster, CookieMonsterCookies),
cookies(summer, SummerCookies),
Total is KatarinaCookies + MaxCookies + CookieMonsterCookies + SummerCookies.
% Query to calculate the total number of cookies they have in total
query(Total) :-
total_cookies(Total).
% Uncomment the following line to run the query and calculate the total number of cookies
% ?- query(Total).
%query(Total).