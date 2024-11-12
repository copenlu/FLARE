% Define a predicate to calculate Jimmy's money based on Ethel's money
jimmy_money(EthelMoney, JimmyMoney) :-
JimmyMoney is 2 * EthelMoney + 2.
% Define a query predicate to find out how much money Jimmy has when Ethel has $8
query(JimmyMoney) :-
jimmy_money(8, JimmyMoney).
% Uncomment the line below to run the query in SWI-Prolog
% query(JimmyMoney).
%query(JimmyMoney).