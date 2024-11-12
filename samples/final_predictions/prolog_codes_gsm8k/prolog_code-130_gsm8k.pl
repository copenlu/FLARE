% Define a rule to calculate the total number of sausages Dylan bought
total_sausages(ChickenSausages, FishSausages, Total) :-
FishSausages is ChickenSausages + 6,
Total is ChickenSausages + FishSausages.
% Query to find the total number of sausages Dylan bought
query(Total) :-
total_sausages(38, FishSausages, Total).
% Uncomment the following line to run the query and find out the total number of sausages Dylan bought.
% ?- query(Total).
%query(Total).