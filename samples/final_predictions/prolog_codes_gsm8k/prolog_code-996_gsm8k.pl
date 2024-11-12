% Define the total number of oranges in boxes
total_oranges_in_boxes(NumBoxes, OrangesPerBox, TotalOranges) :-
TotalOranges is NumBoxes * OrangesPerBox.
% Define the number of oranges kept by Mrs. Harrington
oranges_kept(TotalOranges, OrangesKept) :-
OrangesKept is TotalOranges / 4.
% Define the number of oranges sold by Mrs. Harrington
oranges_sold(TotalOranges, OrangesKept, OrangesSold) :-
OrangesSold is TotalOranges - OrangesKept.
% Predicate to encapsulate the entire calculation and output the number of oranges sold
calculate_oranges_sold(OrangesSold) :-
total_oranges_in_boxes(12, 20, TotalOranges),  % Given values: 12 boxes, 20 oranges per box
oranges_kept(TotalOranges, OrangesKept),
oranges_sold(TotalOranges, OrangesKept, OrangesSold).
% Query to find the number of oranges Mrs. Harrington sold
query(OrangesSold) :-
calculate_oranges_sold(OrangesSold).
% Uncomment the following line to run the query
% ?- query(OrangesSold).
%query(OrangesSold).