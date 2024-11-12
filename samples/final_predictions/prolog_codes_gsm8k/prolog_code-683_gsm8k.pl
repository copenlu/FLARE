% Facts
initial_amount(aurelia, 120).
% Rules
amount_kassidy(KassidyAmount) :-
initial_amount(aurelia, AureliaAmount),
KassidyAmount is 3/4 * AureliaAmount.
amount_rayna(RaynaAmount) :-
amount_kassidy(KassidyAmount),
RaynaAmount is KassidyAmount + 60.
total_combined_amount(TotalAmount) :-
initial_amount(aurelia, AureliaAmount),
amount_kassidy(KassidyAmount),
amount_rayna(RaynaAmount),
TotalAmount is AureliaAmount + KassidyAmount + RaynaAmount.
equal_share_amount(EachAmount) :-
total_combined_amount(TotalAmount),
EachAmount is TotalAmount / 3.
% Query to calculate how much each person would have if they share equally
query(EachAmount) :-
equal_share_amount(EachAmount).
% Uncomment the following line to run the query and calculate the amount each person would have
% ?- query(EachAmount).
%query(EachAmount).