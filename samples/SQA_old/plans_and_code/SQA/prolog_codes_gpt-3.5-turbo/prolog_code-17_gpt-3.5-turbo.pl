% Define properties of Bing and the basket
bing_properties(10, 5).  % Size 10, Weight 5
basket_properties(15, 10).  % MaxSize 15, MaxWeight 10
% Rules to check size and weight
fits_size :- bing_properties(Size, _), basket_properties(MaxSize, _), Size =< MaxSize.
can_handle_weight :- bing_properties(_, Weight), basket_properties(_, MaxWeight), Weight =< MaxWeight.
% Main rule to check if Bing can be held in the basket
can_hold_in_basket :- fits_size, can_handle_weight.
% Query to test if Bing can be held in the basket
query :- can_hold_in_basket.
%query.