% Define total number of students
total_students(3000).
% Calculate number of male students over 16
male_over_16(MaleOver16) :-
total_students(Total),
MaleOver16 is Total / 2 / 4.
% Calculate number of male students under 16
male_under_16(MaleUnder16) :-
total_students(Total),
MaleUnder16 is Total / 2 / 2.
% Calculate number of female students over 16
female_over_16(FemaleOver16) :-
total_students(Total),
male_over_16(MaleOver16),
FemaleOver16 is Total / 2 - MaleOver16.
% Calculate number of female students under 16
female_under_16(FemaleUnder16) :-
total_students(Total),
male_under_16(MaleUnder16),
FemaleUnder16 is Total / 2 - MaleUnder16.
% Calculate total number of female students
total_female_students(TotalFemale) :-
female_over_16(FemaleOver16),
female_under_16(FemaleUnder16),
TotalFemale is FemaleOver16 + FemaleUnder16.
% Query predicate to find the total number of female students
query(TotalFemale) :-
total_female_students(TotalFemale).
% Uncomment the line below to run the query
% query(TotalFemale).
%query(TotalFemale).