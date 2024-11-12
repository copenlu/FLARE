% Define candy amounts for each friend
candy_amount(robert, 3).
candy_amount(cindy, 5).
candy_amount(aaron, 4).
% Calculate how much candy each friend will have after sharing equally
share_candy(EachHas) :-
candy_amount(robert, RobertCandy),
candy_amount(cindy, CindyCandy),
candy_amount(aaron, AaronCandy),
TotalCandy is RobertCandy + CindyCandy + AaronCandy,
EachHas is TotalCandy / 3.
% Query to calculate how much candy each friend will have after sharing equally
query(EachHas) :-
share_candy(EachHas).
% Uncomment the following line to run the query and calculate the candy each friend will have
% ?- query(EachHas).
%query(EachHas).