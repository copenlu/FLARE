% Define a predicate to calculate the remaining money after purchases
remaining_money(WeeklyEarnings, WeeksSaved, FractionSpentOnGame, FractionSpentOnBook, FinalAmountLeft) :-
% Calculate the total savings from weekly earnings and weeks saved
TotalSavings is WeeklyEarnings * WeeksSaved,
% Calculate the money spent on the video game
MoneySpentOnGame is TotalSavings * FractionSpentOnGame,
% Calculate the remaining amount after buying the video game
RemainingAfterGame is TotalSavings - MoneySpentOnGame,
% Calculate the money spent on the book
MoneySpentOnBook is RemainingAfterGame * FractionSpentOnBook,
% Calculate the final remaining amount after buying the book
FinalAmountLeft is RemainingAfterGame - MoneySpentOnBook.
% Define a query predicate to find out the remaining money James has after his expenditures
query(FinalAmountLeft) :-
% Weekly earnings of $10, saving for 4 weeks, spending 1/2 on game and 1/4 on book
remaining_money(10, 4, 0.5, 0.25, FinalAmountLeft).
% Uncomment the line below to run the query in SWI-Prolog
% query(FinalAmountLeft).
%query(FinalAmountLeft).