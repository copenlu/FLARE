% Define the number of cards collected in the first month
cards_collected_first_month(InitialCards, CardsCollected) :-
CardsCollected is InitialCards * 3.
% Define the number of cards collected in the second month
cards_collected_second_month(FirstMonthCards, CardsCollected) :-
CardsCollected is FirstMonthCards - 20.
% Define the number of cards collected in the third month
cards_collected_third_month(FirstMonthCards, SecondMonthCards, CardsCollected) :-
CardsCollected is 2 * (FirstMonthCards + SecondMonthCards).
% Define the total number of cards collected after three months
total_cards_collected(InitialCards, TotalCards) :-
cards_collected_first_month(InitialCards, FirstMonthCards),
cards_collected_second_month(FirstMonthCards, SecondMonthCards),
cards_collected_third_month(FirstMonthCards, SecondMonthCards, ThirdMonthCards),
TotalCards is InitialCards + FirstMonthCards + SecondMonthCards + ThirdMonthCards.
% Query predicate to find the total number of cards Elaine has after three months
query(TotalCards) :-
total_cards_collected(20, TotalCards).  % Initial number of cards Elaine had is 20
% Uncomment the line below to run the query in SWI-Prolog
% query(TotalCards).
%query(TotalCards).