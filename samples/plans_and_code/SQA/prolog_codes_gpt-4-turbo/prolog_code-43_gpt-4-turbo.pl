% Define the original Nobel categories as per Alfred Nobel's will
original_categories([physics, chemistry, physiology_or_medicine, literature, peace]).
% Define the current Nobel categories including the addition
current_categories([physics, chemistry, physiology_or_medicine, literature, peace, economic_sciences]).
% Predicate to check if a category is original
is_original_category(Category) :-
original_categories(Categories),
member(Category, Categories).
% Predicate to check if a category is current
is_current_category(Category) :-
current_categories(Categories),
member(Category, Categories).
% Predicate to find if there are any new categories that were not in the original list
new_category_exists(NewCategory) :-
current_categories(CurrentCategories),
\+ is_original_category(NewCategory),
member(NewCategory, CurrentCategories).
% Check if all original categories are still current
all_original_still_current :-
original_categories(Originals),
current_categories(Currents),
subset(Originals, Currents).
% Check if there are any new categories added
any_new_categories_added :-
new_category_exists(_).
% Main predicate to determine if categories have remained the same
categories_remained_same :-
all_original_still_current,
\+ any_new_categories_added.
% Main query to be called to determine if the Nobel categories have changed
query :-
\+ categories_remained_same.
% Uncomment the following line to run the query
 :- query.
%query.