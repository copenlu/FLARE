% Define the quantities of fruits brought by Morisette
morisette_fruits(apples, 5).
morisette_fruits(oranges, 8).
% Calculate the quantities of fruits brought by Kael
kael_fruits(apples, KaelApples) :-
morisette_fruits(apples, MorisetteApples),
KaelApples is 2 * MorisetteApples.
kael_fruits(oranges, KaelOranges) :-
morisette_fruits(oranges, MorisetteOranges),
KaelOranges is MorisetteOranges / 2.
% Calculate the total number of fruits
total_fruits(Total) :-
morisette_fruits(apples, MorisetteApples),
morisette_fruits(oranges, MorisetteOranges),
kael_fruits(apples, KaelApples),
kael_fruits(oranges, KaelOranges),
Total is MorisetteApples + KaelApples + MorisetteOranges + KaelOranges.
% Query to calculate the total number of fruits Morisette and Kael have in total
query(Total) :-
total_fruits(Total).
% Uncomment the following line to run the query and calculate the total number of fruits
% ?- query(Total).
%query(Total).