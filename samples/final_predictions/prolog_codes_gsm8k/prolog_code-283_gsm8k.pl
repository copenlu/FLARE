% Predicate to calculate the number of cards with a specific letter
% Params: TotalCards, Fraction, NumCards
calculate_cards(TotalCards, Fraction, NumCards) :-
NumCards is round(TotalCards * Fraction).
% Predicate to calculate the number of cards with the letter D
% Params: NumCardsA, NumCardsB, NumCardsC, TotalCards, NumCardsD
calculate_cards_d(NumCardsA, NumCardsB, NumCardsC, TotalCards, NumCardsD) :-
NumCardsD is TotalCards - (NumCardsA + NumCardsB + NumCardsC).
% Main predicate to compute the number of cards with the letter D
% Params: NumCardsD
calculate_num_cards_d(NumCardsD) :-
TotalCards = 80,
FractionA = 2/5,
FractionB = 1/2,
FractionC = 5/8,
% Calculate the number of cards with each letter
calculate_cards(TotalCards, FractionA, NumCardsA),
calculate_cards(TotalCards - NumCardsA, FractionB, NumCardsB),
calculate_cards(TotalCards - NumCardsA - NumCardsB, FractionC, NumCardsC),
% Calculate the number of cards with the letter D
calculate_cards_d(NumCardsA, NumCardsB, NumCardsC, TotalCards, NumCardsD).
% Query predicate to get the number of cards with the letter D
query(NumCardsD) :-
calculate_num_cards_d(NumCardsD).
% Uncomment the following line to run the query
% query(NumCardsD).
%query(NumCardsD).