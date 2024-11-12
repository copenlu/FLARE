% Define a predicate to calculate the total number of stories written by an individual in both weeks
% Params: StoriesFirstWeek, TotalStories
total_stories(StoriesFirstWeek, TotalStories) :-
TotalStories is StoriesFirstWeek * 2.  % Double the stories written in the first week
% Define predicates for each individual
% Alani wrote 20 stories in the first week
total_stories_alani(TotalStories) :-
total_stories(20, TotalStories).
% Braylen wrote 40 stories in the first week
total_stories_braylen(TotalStories) :-
total_stories(40, TotalStories).
% Margot wrote 60 stories in the first week
total_stories_margot(TotalStories) :-
total_stories(60, TotalStories).
% Define a predicate to calculate the total number of stories written altogether
% Params: TotalStoriesAlani, TotalStoriesBraylen, TotalStoriesMargot, TotalStoriesAltogether
total_stories_altogether(TotalStoriesAlani, TotalStoriesBraylen, TotalStoriesMargot, TotalStoriesAltogether) :-
TotalStoriesAlani is TotalStoriesAlani,
TotalStoriesBraylen is TotalStoriesBraylen,
TotalStoriesMargot is TotalStoriesMargot,
TotalStoriesAltogether is TotalStoriesAlani + TotalStoriesBraylen + TotalStoriesMargot.
% Main predicate to compute the total number of stories written altogether
% Params: TotalStoriesAltogether
calculate_total_stories_altogether(TotalStoriesAltogether) :-
total_stories_alani(TotalStoriesAlani),
total_stories_braylen(TotalStoriesBraylen),
total_stories_margot(TotalStoriesMargot),
total_stories_altogether(TotalStoriesAlani, TotalStoriesBraylen, TotalStoriesMargot, TotalStoriesAltogether).
% Query predicate to get the total number of stories written altogether
query(TotalStoriesAltogether) :-
calculate_total_stories_altogether(TotalStoriesAltogether).
% Uncomment the following line to run the query
% query(TotalStoriesAltogether).
%query(TotalStoriesAltogether).