% Define the average time to research and write a blog article
average_time_per_article(4).
% Define the rule to calculate the total hours spent writing articles over three days
total_hours_spent(TotalHours) :-
ArticlesOnMonday is 5,  % Assumed atom/predicate: Meredith wrote 5 articles on Monday
ArticlesOnTuesday is ArticlesOnMonday + (2/5 * ArticlesOnMonday),  % Assumed atom/predicate: Meredith wrote 2/5 more articles on Tuesday than on Monday
ArticlesOnWednesday is 2 * ArticlesOnTuesday,  % Assumed atom/predicate: Meredith wrote twice the number of articles on Wednesday than on Tuesday
average_time_per_article(AverageTime),
TotalHours is (ArticlesOnMonday + ArticlesOnTuesday + ArticlesOnWednesday) * AverageTime.
% Query to find the total hours spent writing articles over three days
query_total_hours_spent(TotalHours) :-
total_hours_spent(TotalHours).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_total_hours_spent(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).