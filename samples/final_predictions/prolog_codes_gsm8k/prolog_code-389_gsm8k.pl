% Predicate to calculate the total number of cookies Rachel has after buying and receiving cookies
total_cookies_bought_and_received(Bought, Given, Total) :-
Total is Bought + Given.
% Predicate to calculate the number of cookies left for Rachel after her brother ate some
cookies_left(Total, Eaten, Left) :-
Left is Total - Eaten.
% Main predicate to calculate the number of cookies left for Rachel
cookies_left_for_rachel(Bought, Given, Eaten, Left) :-
total_cookies_bought_and_received(Bought, Given, Total),
cookies_left(Total, Eaten, Left).
% Query to find out how many cookies are left for Rachel after buying 23 cookies, receiving 42 cookies, and her brother eating 44 cookies
query(LeftCookies) :-
cookies_left_for_rachel(23, 42, 44, LeftCookies).
% Uncomment the following line to run the query
% ?- query(LeftCookies).
%query(LeftCookies).