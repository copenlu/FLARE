% Define a predicate to calculate the height of Mattison's two-story house
height_of_house(MattisonHeight, HouseHeight) :-
HouseHeight is MattisonHeight * 7.
% Define a predicate to calculate the height of the first floor's ceiling
ceiling_height_first_floor(MattisonHeight, CeilingHeight) :-
CeilingHeight is MattisonHeight * 3.
% Define a predicate to calculate the height of the roof from the second floor's floor
roof_height_second_floor(MattisonHeight, RoofHeight) :-
height_of_house(MattisonHeight, HouseHeight),
ceiling_height_first_floor(MattisonHeight, CeilingHeight),
RoofHeight is HouseHeight + CeilingHeight.
% Define a query predicate to find out the height of the roof from the second floor's floor
query(RoofHeight) :-
% Mattison's height is 60 inches
roof_height_second_floor(60, RoofHeight).
% Uncomment the line below to run the query in SWI-Prolog
% query(RoofHeight).
%query(RoofHeight).