% Define the total number of boxes bought this week (assumed known)
total_boxes_bought_this_week(8).  % Assumed total boxes bought this week
% Define the total number of boxes bought last week (assumed known)
total_boxes_bought_last_week(4).  % Assumed total boxes bought last week
% Calculate the difference in the number of boxes bought this week compared to last week
difference_in_boxes(TotalBoxesBoughtThisWeek, TotalBoxesBoughtLastWeek, Difference) :-
Difference is TotalBoxesBoughtThisWeek - TotalBoxesBoughtLastWeek.
% Query predicate to find the difference in the number of boxes bought this week compared to last week
query(Difference) :-
total_boxes_bought_this_week(TotalBoxesBoughtThisWeek),
total_boxes_bought_last_week(TotalBoxesBoughtLastWeek),
difference_in_boxes(TotalBoxesBoughtThisWeek, TotalBoxesBoughtLastWeek, Difference).
% Uncomment the line below to run the query
% query(Difference).
%query(Difference).