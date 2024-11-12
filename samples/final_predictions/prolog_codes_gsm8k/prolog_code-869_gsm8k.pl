% Define the quantities of white shirts and floral shirts
white_shirts(40).
floral_shirts(50).
% Define the number of white shirts with collars (assumed known)
white_shirts_with_collars(20).  % Assumed number of white shirts with collars
% Define the number of floral shirts with buttons
floral_shirts_with_buttons(20).
% Calculate the number of white shirts with no collars
white_shirts_no_collars(WhiteShirtsNoCollars) :-
white_shirts(WhiteShirts),
white_shirts_with_collars(WhiteShirtsWithCollars),
WhiteShirtsNoCollars is WhiteShirts - WhiteShirtsWithCollars.
% Calculate the number of floral shirts with no buttons
floral_shirts_no_buttons(FloralShirtsNoButtons) :-
floral_shirts(FloralShirts),
floral_shirts_with_buttons(FloralShirtsWithButtons),
FloralShirtsNoButtons is FloralShirts - FloralShirtsWithButtons.
% Calculate the difference between the number of floral shirts with no buttons and white shirts with no collars
difference_shirts(Difference) :-
white_shirts_no_collars(WhiteShirtsNoCollars),
floral_shirts_no_buttons(FloralShirtsNoButtons),
Difference is FloralShirtsNoButtons - WhiteShirtsNoCollars.
% Query predicate to find the difference between the two types of shirts
query(Difference) :-
difference_shirts(Difference).
% Uncomment the line below to run the query
% query(Difference).
%query(Difference).