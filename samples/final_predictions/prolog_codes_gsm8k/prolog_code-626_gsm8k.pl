% Define the funding per month rule
funding_per_month(1, 100000). % Initial funding for the first 5 months
funding_per_month(Month, Funding) :-
Month > 5,
PrevMonth is Month - 1,
funding_per_month(PrevMonth, PrevFunding),
Funding is PrevFunding * 1.5. % 50% more funding per month
% Define the total research cost rule
total_research_cost(TotalCost) :-
funding_per_month(5, InitialFunding),
ExtendedMonths is 10 * 5, % 10 times longer than initial 5 months
findall(Funding, (between(6, ExtendedMonths, Month), funding_per_month(Month, Funding)), FundingList),
sum_list([InitialFunding | FundingList], TotalCost).
% Define a predicate that returns the correct numerical answer when queried
query(Answer) :-
total_research_cost(Answer).
% Uncomment the following line to run the query
% ?- query(Answer).
%query(Answer).