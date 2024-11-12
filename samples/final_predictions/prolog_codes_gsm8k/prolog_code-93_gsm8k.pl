% Define the amount of potato salad needed for adults and children
potato_salad_needed(adult, 10).
potato_salad_needed(child, 5).
% Calculate the total amount of potato salad needed for the entire picnic
total_potato_salad_needed(NumAdults, NumChildren, TotalPotatoSalad) :-
potato_salad_needed(adult, AdultAmount),
potato_salad_needed(child, ChildAmount),
TotalPotatoSalad is (NumAdults * AdultAmount) + (NumChildren * ChildAmount).
% Query to calculate the total amount of potato salad needed for the picnic
query(TotalPotatoSalad) :-
total_potato_salad_needed(20, 5, TotalPotatoSalad).
% Uncomment the following line to run the query and calculate the total amount of potato salad needed
% ?- query(TotalPotatoSalad).
%query(TotalPotatoSalad).