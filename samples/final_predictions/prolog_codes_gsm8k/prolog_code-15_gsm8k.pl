% Define the rule to calculate the percentage of students enrolled in hip-hop dance
percentage_enrolled(ClassSize, ContemporaryPercentage, JazzPercentage, HipHopPercentage) :-
ContemporaryStudents is round(ClassSize * ContemporaryPercentage / 100),
JazzStudents is round(ClassSize * JazzPercentage / 100),
HipHopStudents is ClassSize - ContemporaryStudents - JazzStudents,
HipHopPercentage is (HipHopStudents / ClassSize) * 100.
% Calculate the percentage of students enrolled in hip-hop dance in a class of 20 students
calculate_hiphop_percentage(HipHopPercentage) :-
percentage_enrolled(20, 20, 25, HipHopPercentage).  % Assumed percentages for contemporary and jazz dance
% Query to find the percentage of students enrolled in hip-hop dance
query(HipHopPercentage) :-
calculate_hiphop_percentage(HipHopPercentage).
% Uncomment the following line to run the query
% ?- query(HipHopPercentage).
%query(HipHopPercentage).