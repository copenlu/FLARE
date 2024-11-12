% Define facts for the number of stripes on each zebra
zebra_stripes(17).
zebra_stripes(17).
zebra_stripes(36).
zebra_stripes(18).
% Define a rule to calculate the average number of stripes on the zebras
average_stripes(Average) :-
findall(Stripes, zebra_stripes(Stripes), AllStripes),  % Collect all the stripes
sum_list(AllStripes, TotalStripes),                    % Calculate the total number of stripes
length(AllStripes, NumZebras),                         % Determine the number of zebras
Average is TotalStripes / NumZebras.                   % Calculate the average number of stripes
% Query to find out the average number of stripes on the zebras
query(AverageStripes) :-
average_stripes(AverageStripes).
% Uncomment the following line to run the query
% ?- query(AverageStripes).
%query(AverageStripes).