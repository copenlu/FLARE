% Define the total number of guests at the wedding reception and cookies brought per guest
total_cookies_brought(TotalCookies) :-
Guests = 100,
CookiesPerGuest = 15,
TotalCookies is Guests * CookiesPerGuest.
% Calculate the number of people in the church based on cookies received
people_in_church(CookiesGiven, People) :-
CookiesPerPerson = 15,
People is CookiesGiven / CookiesPerPerson.
% Calculate the number of people in the church next door
calculate_people_in_church(People) :-
total_cookies_brought(TotalCookies),
CookiesGiven is TotalCookies / 2,
people_in_church(CookiesGiven, People).
% Query predicate to find the number of people in the church next door
query(People) :-
calculate_people_in_church(People).
% Uncomment the line below to run the query
% query(People).
%query(People).