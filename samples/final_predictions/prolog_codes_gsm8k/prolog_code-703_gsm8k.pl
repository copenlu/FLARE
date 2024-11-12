% Define the number of cookies baked by Greta and Celinda
cookies_baked(greta, 30).
cookies_baked(celinda, 60).
% Calculate the total number of cookies in the box after eating
cookies_in_box(TotalCookies) :-
cookies_baked(greta, GretaCookies),
cookies_baked(celinda, CelindaCookies),
TotalBakedCookies is GretaCookies + CelindaCookies,
CookiesEaten = 10,
TotalCookies is TotalBakedCookies - CookiesEaten.
% Query to calculate the number of cookies in the box
query(TotalCookies) :-
cookies_in_box(TotalCookies).
% Uncomment the following line to run the query and calculate the number of cookies in the box
% ?- query(TotalCookies).
%query(TotalCookies).