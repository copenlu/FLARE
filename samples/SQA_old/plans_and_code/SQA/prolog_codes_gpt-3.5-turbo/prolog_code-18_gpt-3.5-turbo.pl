% Assumed atom/predicate
story(jonah_and_the_whale, forgiveness, low, short).
story(loaves_and_fishes, sharing, low, short).
% Assumed atom/predicate
activity(drawing, high, 5).
activity(storytelling, medium, 5).
find_story_by_moral(Moral, Name) :-
story(Name, Moral, Complexity, Length),
Complexity = low,
Length = short.
recommend_activity(Age, Type) :-
activity(Type, Interaction_Level, Suitable_Age),
Age = Suitable_Age.
generate_lesson(Moral, Age, Plan) :-
find_story_by_moral(Moral, Story),
recommend_activity(Age, Activity),
Plan = [Story, Activity].
% Driver predicate for querying
query :- generate_lesson(forgiveness, 5, Plan).
%query.