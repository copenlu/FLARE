% Define the total number of cookies Susan had initially
total_cookies(100).
% Define the number of cookies taken by Susan's husband
husband_cookies_taken(4).
% Define the number of nephews
number_of_nephews(6).
% Define the predicate to calculate the number of cookies each nephew will receive
cookies_per_nephew(CookiesPerNephew) :-
total_cookies(Total),  % Get the total number of cookies
husband_cookies_taken(HusbandCookies),  % Get the number of cookies taken by husband
number_of_nephews(Nephews),  % Get the number of nephews
RemainingCookies is Total - HusbandCookies,  % Calculate the remaining cookies after husband took his share
CookiesPerNephew is RemainingCookies // Nephews.  % Calculate the number of cookies each nephew will receive
% Query predicate to run the program and get the result
query(CookiesPerNephew) :-
cookies_per_nephew(CookiesPerNephew).
% Uncomment the following line to run the query
% ?- query(CookiesPerNephew).
%query(CookiesPerNephew).