% Define the number of female lions
female_lions(12).
% Calculate the number of male lions (half the number of female lions)
male_lions(NumMale) :-
female_lions(NumFemale),
NumMale is NumFemale / 2.
% Define the number of lion cubs
lion_cubs(14).
% Calculate the total number of lions in the enclosure
total_lions(Total) :-
female_lions(Females),
male_lions(Males),
lion_cubs(Cubs),
Total is Females + Males + Cubs.
% Query to calculate the total number of lions in the enclosure
query(Total) :-
total_lions(Total).
% Uncomment the following line to run the query and calculate the total number of lions
% ?- query(Total).
%query(Total).