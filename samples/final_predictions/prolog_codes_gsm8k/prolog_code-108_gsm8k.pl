% Define a rule to calculate the number of cookies eaten by Cody and the total number eaten by both
cookies_eaten(AmirCookies, CodyCookies, TotalCookies) :-
CodyCookies is AmirCookies * 3,
TotalCookies is AmirCookies + CodyCookies.
% Query the rule with Amir eating 5 cookies
query(TotalCookies) :-
cookies_eaten(5, Cody, TotalCookies).
% Uncomment the following line to run the query and calculate the total number of cookies eaten by both
% ?- query(TotalCookies).
%query(TotalCookies).