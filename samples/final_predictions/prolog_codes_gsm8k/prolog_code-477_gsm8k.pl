% Define constants
cards_per_deck(25).
decks(6).
cards_per_box(40).
boxes(5).
cards_kept(50).
cards_per_student(10).
% Calculate total number of basketball cards
total_basketball_cards(TotalBasketballCards) :-
cards_per_deck(CardsPerDeck),
decks(Decks),
TotalBasketballCards is CardsPerDeck * Decks.
% Calculate total number of baseball cards
total_baseball_cards(TotalBaseballCards) :-
cards_per_box(CardsPerBox),
boxes(Boxes),
TotalBaseballCards is CardsPerBox * Boxes.
% Calculate total number of cards
total_cards(TotalCards) :-
total_basketball_cards(TotalBasketball),
total_baseball_cards(TotalBaseball),
TotalCards is TotalBasketball + TotalBaseball.
% Calculate number of students
number_of_students(NumStudents) :-
total_cards(Total),
cards_kept(Kept),
cards_per_student(CardsPerStudent),
RemainingCards is Total - Kept,
NumStudents is RemainingCards // CardsPerStudent.
% Query to calculate the number of students Miss Maria has
query(NumStudents) :-
number_of_students(NumStudents).
% Uncomment the following line to run the query and calculate the number of students
% ?- query(NumStudents).
%query(NumStudents).