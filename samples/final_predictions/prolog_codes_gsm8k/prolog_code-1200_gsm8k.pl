% Define the area of a room
area_of_room(Length, Width, Area) :-
Area is Length * Width.
% Define the total area of the house
total_area_of_house(BedroomArea, LivingRoomArea, RestOfHouseArea, TotalArea) :-
TotalArea is (BedroomArea * 4) + LivingRoomArea + RestOfHouseArea.
% Given dimensions and values
area_of_room(20, 12, BedroomArea),  % Dimensions of one bedroom
LivingRoomArea is BedroomArea * 5,   % Living room is 5 times bigger than one bedroom
RestOfHouseArea = 1000.              % Area of the rest of the house
% Calculate the total area of the house
calculate_total_area(TotalArea) :-
total_area_of_house(BedroomArea, LivingRoomArea, RestOfHouseArea, TotalArea).
% Query predicate to get the total area of the house
query(TotalArea) :-
calculate_total_area(TotalArea).
% Uncomment the following line to run the query
% query(TotalArea).
%query(TotalArea).