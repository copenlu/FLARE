topping(anchovy).
topping(pepperoni).
topping(vegetables).
has_bones(anchovy).
pizza_has_bones(Topping) :-
topping(Topping),
has_bones(Topping).
has_bones(anchovy_boneless) :- false. % Assumed atom
query :- pizza_has_bones(anchovy).
%query.