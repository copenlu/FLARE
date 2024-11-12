% Define the total number of newspapers delivered by James
total_newspapers(600).
% Define the number of newspapers delivered to District A and District C
newspapers_to_district_a(198).
newspapers_to_district_c(209).
% Calculate the number of newspapers delivered to District B
newspapers_to_district_b(NewspapersToDistrictB) :-
total_newspapers(Total),
newspapers_to_district_a(DistrictA),
newspapers_to_district_c(DistrictC),
NewspapersToDistrictB is Total - DistrictA - DistrictC.
% Query to find out how many newspapers James delivers to District B
query(NewspapersToDistrictB) :-
newspapers_to_district_b(NewspapersToDistrictB).
% Uncomment the following line to run the query and calculate the number of newspapers delivered to District B
% ?- query(NewspapersToDistrictB).
%query(NewspapersToDistrictB).