% Define the number of puppies and puppies with spots in Jennifer's litter
jennifers_puppies(8).
jennifers_spotted_puppies(3).
% Define the number of puppies and puppies with spots in Brandon's litter
brandons_puppies(12).
brandons_spotted_puppies(4).
% Calculate the total number of puppies with spots
total_spotted_puppies(TotalSpotted) :-
jennifers_spotted_puppies(JenniferSpotted),
brandons_spotted_puppies(BrandonSpotted),
TotalSpotted is JenniferSpotted + BrandonSpotted.
% Calculate the total number of puppies
total_puppies(Total) :-
jennifers_puppies(JenniferPuppies),
brandons_puppies(BrandonPuppies),
Total is JenniferPuppies + BrandonPuppies.
% Calculate the percentage of puppies with spots
percentage_spotted(Percentage) :-
total_spotted_puppies(TotalSpotted),
total_puppies(Total),
Percentage is (TotalSpotted / Total) * 100.
% Query to calculate the percentage of puppies with spots
query(Percentage) :-
percentage_spotted(Percentage).
% Uncomment the following line to run the query and calculate the percentage of puppies with spots
% ?- query(Percentage).
%query(Percentage).