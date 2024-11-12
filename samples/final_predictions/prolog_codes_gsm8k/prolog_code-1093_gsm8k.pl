% Define a predicate to calculate the number of pizzas eaten by each group
pizzas_eaten(GleeClubPizzas, FootballTeamPizzas) :-
GleeClubPizzas is 0.7 * 20,  % Glee club eats 70% of 20 pizzas
FootballTeamPizzas is 0.8 * (2 * GleeClubPizzas).  % Football team eats 80% of twice the glee club's pizzas
% Define a predicate to calculate the number of pizzas left
pizzas_left(TotalPizzas, GleeClubPizzas, FootballTeamPizzas, PizzasLeft) :-
pizzas_eaten(GleeClubPizzas, FootballTeamPizzas),
PizzasLeft is TotalPizzas - GleeClubPizzas - FootballTeamPizzas.
% Query to find the number of pizzas left
query_pizzas_left(PizzasLeft) :-
pizzas_left(20, GleeClubPizzas, FootballTeamPizzas, PizzasLeft).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
query_pizzas_left(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).