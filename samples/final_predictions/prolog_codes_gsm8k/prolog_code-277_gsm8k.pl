% Define a rule to calculate the number of M&Ms in the second bag
mms_second_bag(FirstBagMms, SecondBagMms) :-
SecondBagMms is FirstBagMms + 12.
% Define a rule to calculate the number of M&Ms in the third bag
mms_third_bag(FirstBagMms, ThirdBagMms) :-
ThirdBagMms is FirstBagMms / 2.
% Define a rule to calculate the total number of M&Ms Mary has
total_mms(FirstBagMms, TotalMms) :-
mms_second_bag(FirstBagMms, SecondBagMms),
mms_third_bag(FirstBagMms, ThirdBagMms),
TotalMms is FirstBagMms + SecondBagMms + ThirdBagMms.
% Query predicate to get the total number of M&Ms Mary has
query(TotalMms) :-
total_mms(300, TotalMms).  % Assuming Mary buys the first bag with 300 M&Ms
% Uncomment the following line to run the query
% query(TotalMms).
%query(TotalMms).