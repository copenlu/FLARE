% Define dimensions of the boxes
box_dimensions(5, 6, 4). % Length, Width, Height in inches
wall_thickness(1). % Thickness of the walls in inches
% Calculate the inner volume of a single box
inner_volume_single_box(Volume) :-
box_dimensions(Length, Width, Height),
wall_thickness(Thickness),
InnerLength is Length - 2 * Thickness,
InnerWidth is Width - 2 * Thickness,
InnerHeight is Height - 2 * Thickness,
Volume is InnerLength * InnerWidth * InnerHeight.
% Calculate the total inner volume of all three boxes
total_inner_volume(TotalVolume) :-
inner_volume_single_box(SingleBoxVolume),
TotalVolume is SingleBoxVolume * 3.
% Query to calculate the total inner volume of all three boxes
query(TotalVolume) :-
total_inner_volume(TotalVolume).
% Uncomment the following line to run the query and calculate the total inner volume
% ?- query(TotalVolume).
%query(TotalVolume).