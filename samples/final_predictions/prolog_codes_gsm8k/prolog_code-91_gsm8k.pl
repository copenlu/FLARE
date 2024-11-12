% Define the total number of copies sold
total_copies(88000).
% Calculate the number of copies Harald sold
copies_sold(HaraldCopies) :-
total_copies(Total),
HaraldCopies is Total / 11. % Harald's copies + Marilyn's copies = Total, Marilyn's copies = 10 * Harald's copies
% Query to find out how many copies Harald sold
query(HaraldCopies) :-
copies_sold(HaraldCopies).
% Uncomment the following line to run the query and calculate the number of copies Harald sold
% ?- query(HaraldCopies).
%query(HaraldCopies).