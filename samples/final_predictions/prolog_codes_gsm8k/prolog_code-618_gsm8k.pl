% Define the rate at which Ruiz makes chocolates in 1 hour
ruiz_rate_per_hour(RuizRatePerHour) :-
RuizRatePerHour is 120 / 2.  % Assumed atom: Ruiz makes 120 pounds of chocolates in 2 hours
% Define the rate at which Marissa makes chocolates in 1 hour based on Ruiz's rate
marissa_rate_per_hour(RuizRatePerHour, MarissaRatePerHour) :-
RuizRatePerHour =:= 120 / 2,
MarissaRatePerHour is (3/4) * RuizRatePerHour.
% Calculate the total amount of chocolates made by Ruiz in 12 hours
chocolates_made_by_ruiz(ChocolatesRuiz) :-
ruiz_rate_per_hour(RuizRatePerHour),
ChocolatesRuiz is RuizRatePerHour * 12.
% Calculate the total amount of chocolates made by Marissa in 12 hours
chocolates_made_by_marissa(ChocolatesRuiz, ChocolatesMarissa) :-
marissa_rate_per_hour(ChocolatesRuiz, MarissaRatePerHour),
ChocolatesMarissa is MarissaRatePerHour * 12.
% Calculate the total amount of chocolates made by Ruiz and Marissa together
total_chocolates(ChocolatesRuiz, ChocolatesMarissa, Total) :-
Total is ChocolatesRuiz + ChocolatesMarissa.
% Query to find the total amount of chocolates made by Ruiz and Marissa together
query(Total) :-
chocolates_made_by_ruiz(ChocolatesRuiz),
chocolates_made_by_marissa(ChocolatesRuiz, ChocolatesMarissa),
total_chocolates(ChocolatesRuiz, ChocolatesMarissa, Total).
% Uncomment the following line to run the query
% ?- query(Total).
%query(Total).