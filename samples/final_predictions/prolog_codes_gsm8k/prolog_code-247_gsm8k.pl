% Define the number of books each person has
has_books(dolly, 2).
has_books(pandora, 1).
has_books(Person, OwnBooks),  % Get the number of books the person owns
OtherPerson = pandora,  % Assume the other person is Pandora
has_books(OtherPerson, OtherBooks),  % Get the number of books the other person owns
% Query predicate to run the program and get the result
query(TotalBooks) :-
% Uncomment the following line to run the query
% ?- query(TotalBooks).
%query(TotalBooks).