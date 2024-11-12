% Calculate the number of spoons in the package that Julia bought
calculate_spoons_in_package(JuliaBought, HusbandBought, SpoonsUsed, TotalSpoons) :-
TotalSpoons is JuliaBought + HusbandBought - SpoonsUsed.
% Query to find the number of spoons in the package Julia bought
query(JuliaBought) :-
calculate_spoons_in_package(JuliaBought, 5, 3, 12).
% Uncomment the following line to run the query and find out the number of spoons in the package Julia bought.
% query(JuliaBought).
%query(JuliaBought).