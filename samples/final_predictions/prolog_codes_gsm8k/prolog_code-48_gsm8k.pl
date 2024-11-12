% Define the rule to calculate the number of post-it notes purchased
calculate_purchased_notes(PurchasedNotes) :-
InitialNotes = 80,         % Initial number of post-it notes
UsedNotes = 220,           % Number of post-it notes used at work
RemainingNotes = 23,       % Number of post-it notes remaining overall
TotalNotes is InitialNotes + PurchasedNotes - UsedNotes - RemainingNotes,  % Total post-it notes calculation
PurchasedNotes is TotalNotes - InitialNotes.  % Calculate the number of post-it notes purchased
% Query to find the number of post-it notes purchased
query(PurchasedNotes) :-
calculate_purchased_notes(PurchasedNotes).
% Uncomment the following line to run the query
% ?- query(PurchasedNotes).
%query(PurchasedNotes).