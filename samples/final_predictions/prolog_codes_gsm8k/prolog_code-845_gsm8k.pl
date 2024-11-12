% Define the number of packages and tins per package for cat and dog food
packages_cat_food(8).
tins_per_package_cat(11).
packages_dog_food(6).
tins_per_package_dog(6).
% Calculate the total tins of cat food
total_tins_cat_food(TotalTinsCatFood) :-
packages_cat_food(PackagesCatFood),
tins_per_package_cat(TinsPerPackageCat),
TotalTinsCatFood is PackagesCatFood * TinsPerPackageCat.
% Calculate the total tins of dog food
total_tins_dog_food(TotalTinsDogFood) :-
packages_dog_food(PackagesDogFood),
tins_per_package_dog(TinsPerPackageDog),
TotalTinsDogFood is PackagesDogFood * TinsPerPackageDog.
% Calculate the difference in tins between cat food and dog food
difference_tins_cat_dog(DifferenceTins) :-
total_tins_cat_food(TotalTinsCatFood),
total_tins_dog_food(TotalTinsDogFood),
DifferenceTins is TotalTinsCatFood - TotalTinsDogFood.
% Query predicate to find the difference in tins between cat and dog food
query(DifferenceTins) :-
difference_tins_cat_dog(DifferenceTins).
% Uncomment the line below to run the query
% query(DifferenceTins).
%query(DifferenceTins).